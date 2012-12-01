caches = []
relays = []

caches = lookup_resources(:graphite_carbon_cache)
relays = lookup_resources(:graphite_carbon_relay)

template "#{ node['graphite']['conf_dir'] }/carbon.conf" do
  source 'carbon.conf.erb'
  owner node['graphite']['user']
  group node['graphite']['group']
  mode 0644
  variables(:caches => caches,
    :relays => relays,
    :user => node['graphite']['user'])
end
