
action :create do

  cache_name = @new_resource.name

  runit_service cache_name do
    ignore_failure true
    template_name 'carbon-cache'
    options :user => node['graphite']['user'],
      :bin_dir => node['graphite']['bin_dir'],
      :pid_dir => node['graphite']['pid_dir'],
      :virt_env => node['graphite']['virtualenv'],
      :name => cache_name
  end

end

action :delete do
end
