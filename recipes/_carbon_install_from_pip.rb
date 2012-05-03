python_pip "carbon" do
  version node['graphite']['carbon']['version']
  virtualenv node['graphite']['virtualenv']
  action :install
end
