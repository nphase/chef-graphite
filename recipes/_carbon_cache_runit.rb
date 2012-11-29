include_recipe 'runit'

caches = lookup_resources(:graphite_carbon_cache)

caches.each do |c|
  runit_service "carbon-cache-#{ c.name }" do
    template_name 'carbon-cache'
    options :user => node['graphite']['user'],
      :bin_dir => node['graphite']['bin_dir'],
      :pid_dir => node['graphite']['pid_dir'],
      :virt_env => node['graphite']['virtualenv'],
      :name => c.name
  end
end
