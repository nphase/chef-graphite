#
# Cookbook Name:: graphite
# Recipe:: default
#
# Copyright 2012, Howaboutwe
#
# All rights reserved - Do Not Redistribute
#

group "graphite" do
  action :create
end

user "graphite" do
  group "graphite"
  shell "/bin/bash"
  home "/opt/graphite"
  supports :manage_home => true
end

directory "/opt/graphite" do
  action :create
  owner "graphite"
  group "graphite"
  mode 0755
  recursive true
end

directory "#{node[:graphite][:virtualenv]}" do
  action :create
  owner "graphite"
  group "graphite"
  recursive true
  mode 0755
end

package "libcairo2-dev"

python_virtualenv "#{node[:graphite][:virtualenv]}" do
  interpreter "python2.7"
  owner "graphite"
  group "graphite"
  action :create
end

python_pkgs = node[:graphite][:packages].collect do |pkg, ver|
  python_pip "#{pkg}" do
    version ver
    virtualenv "#{node[:graphite][:virtualenv]}"
    action :install
  end
end


python_pip "http://cairographics.org/releases/py2cairo-1.8.10.tar.gz" do
  virtualenv "#{node[:graphite][:virtualenv]}"
  action :install
end

#execute "pip install py2cairo" do
#  user "graphite"
#  command "#{node[:graphite][:virtualenv]}/bin/pip install http://cairographics.org/releases/py2cairo-1.8.10.tar.gz"
#end


# TODO: The Pip provider always runs as root.  This should not be.
execute "chown -R graphite:graphite /opt/graphite" do
  action :run
end

template "/opt/graphite/conf/storage-schemas.conf" do
  source "storage-schemas.conf.erb"
  owner "graphite"
  group "graphite"
  mode 0655
end

template "/opt/graphite/conf/carbon.conf" do
  source "carbon.conf.erb"
  owner "graphite"
  group "graphite"
  mode 0655
  variables(
            :line_rcvr_addr => node[:graphite][:carbon][:line_rcvr_addr],
            :pickle_rcvr_addr => node[:graphite][:carbon][:pickle_rcvr_addr],
            :cache_query_addr => node[:graphite][:carbon][:cache_query_addr]
            )
end

runit_service "carbon-cache"

