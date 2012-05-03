template "#{node['graphite']['app_dir']}/local_settings.py" do
  source "local_settings.py.erb"
  owner node['graphite']['user'] 
  group node['graphite']['group'] 
  mode 0655
end
