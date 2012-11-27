caches = lookup_cache_resources

template "#{ node['graphite']['conf_dir'] }/carbon.conf" do
  source 'carbon.conf.erb'
  owner node['graphite']['user']
  group node['graphite']['group']
  mode 0644
  variables(:caches => caches,
            :user => node['graphite']['user'],
            :line_rcvr_addr => node['graphite']['carbon']['line_rcvr_addr'],
            :pickle_rcvr_addr => node['graphite']['carbon']['pickle_rcvr_addr'],
            :cache_query_addr => node['graphite']['carbon']['cache_query_addr'])
end
