user node['graphite']['user'] do
  group node['graphite']['group']
  shell "/bin/bash"
  home node['graphite']['user_home']
  system true
  supports :manage_home => true
end

directory node['graphite']['user_home'] do
  owner node['graphite']['user']
  group node['graphite']['group']
  recursive true
  action :create
  mode 0755
end
