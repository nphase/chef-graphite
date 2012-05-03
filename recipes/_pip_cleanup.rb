# TODO: The Pip provider always runs as root.  This should not be.
execute "chown -R graphite:graphite #{node['graphite']['user_home']}" do
  action :run
end

