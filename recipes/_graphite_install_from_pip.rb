python_pip "graphite-web" do
  version node['graphite']['graphite_web']['version']
  virtualenv node['graphite']['virtualenv']
  action :install
end
