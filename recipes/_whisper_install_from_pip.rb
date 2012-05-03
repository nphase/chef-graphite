python_pip "whisper" do
  version node['graphite']['whisper']['version']
  virtualenv node['graphite']['virtualenv']
  action :install
end
