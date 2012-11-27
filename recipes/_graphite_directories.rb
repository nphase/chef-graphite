%w(webapp_dir app_dir conf_dir data_dir log_dir pid_dir).each do |dir|
  directory node['graphite'].send(dir) do
    owner node['graphite']['user']
    group node['graphite']['group']
    mode 0755
  end
end
