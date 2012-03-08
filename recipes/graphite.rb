directory "#{node[:graphite][:virtualenv]}/storage/log/webapp" do
  action :create
  recursive true
  owner "graphite"
  group "graphite"
  mode 0755
end

template "/opt/graphite/webapp/graphite/local_settings.py" do
  source "local_settings.py.erb"
  owner "graphite"
  group "graphite"
  mode 0655
end

# TODO: Automate this.
execute "syncdb" do
  command "#{node[:graphite][:virtualenv]}/bin/django-admin.py syncdb --settings=graphite.settings --pythonpath=webapp"
  user "graphite"
  cwd "#{node[:graphite][:user_home]}"
  action :nothing
end

runit_service "graphite" 
