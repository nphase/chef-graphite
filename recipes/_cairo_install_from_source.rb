python_pip "#{node['graphite']['cairo']['source']['url']}/py2cairo-#{node['graphite']['cairo']['source']['version']}.tar.gz" do
  virtualenv node['graphite']['virtualenv']
  action :install
end
