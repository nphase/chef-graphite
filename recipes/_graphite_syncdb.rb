template "#{node['graphite']['app_dir']}/initial_data.json" do
  source "initial_data.json.erb"
  owner node['graphite']['user']
  group node['graphite']['group']
  mode "0644"
  variables(
    :admin_user     => node['graphite']['db']['admin_user'],
    :admin_password => node['graphite']['db']['admin_password'],
    :admin_email    => node['graphite']['db']['admin_email'])
end

script "graphite_syncdb" do
  code <<-EOF
source #{ node['graphite']['virtualenv'] }/bin/activate
python #{ node['graphite']['app_dir'] }/manage.py syncdb --noinput
EOF
  interpreter 'bash'
  user node['graphite']['user']
  cwd node['graphite']['user_home']
  action :run
  not_if { File.exists?("#{ node['graphite']['data_dir'] }/django.sqlite3.db") }
end
