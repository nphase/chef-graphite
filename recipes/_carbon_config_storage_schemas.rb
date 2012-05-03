template "#{node['graphite']['conf_dir']}/storage-schemas.conf" do
  source "storage-schemas.conf.erb"
  owner node['graphite']['user']
  group node['graphite']['group']
  mode 0655
end
