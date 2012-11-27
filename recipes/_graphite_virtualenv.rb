include_recipe "python"

directory node['graphite']['virtualenv'] do
  owner node['graphite']['user']
  group node['graphite']['group']
  recursive true
  action :create
  mode 0755
end

directory "#{node['graphite']['virtualenv']}/storage/log/webapp" do
  owner node['graphite']['user']
  group node['graphite']['group']
  mode 0755
  action :create
  recursive true
end

python_virtualenv node['graphite']['virtualenv'] do
  interpreter "python"
  owner node['graphite']['user']
  group node['graphite']['group']
  action :create
  options "--system-site-packages"
end
