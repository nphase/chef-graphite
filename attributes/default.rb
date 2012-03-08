default[:graphite][:virtualenv] = '/opt/graphite/.venv/'
default[:graphite][:conf_dir] = '/opt/graphite/conf/'
default[:graphite][:data_dir] = '/opt/graphite/storage/'
default[:graphite][:home_dir] = '/opt/graphite/share/graphite/'
default[:graphite][:log_dir] = '/opt/graphite/log/'
default[:graphite][:pid_dir] = '/var/run/graphite'
default[:graphite][:user] = 'graphite'
default[:graphite][:user_home] = '/opt/graphite/'
default[:graphite][:carbon ][:user] = 'graphite'
default[:graphite][:whisper ][:user] = 'graphite'
default[:graphite][:graphite_web][:user] = 'graphite'
default[:users ]['graphite'][:uid] = 446
default[:groups]['graphite'][:gid] = 446
default[:graphite][:carbon ][:line_rcvr_addr] = node['cloud']['local_ipv4']
default[:graphite][:carbon ][:pickle_rcvr_addr] = node['cloud']['local_ipv4']
default[:graphite][:carbon ][:cache_query_addr] = node['cloud']['local_ipv4']
default[:graphite][:packages] = { "whisper" => "0.9.9", "carbon" => "0.9.9", "graphite-web" => "0.9.9", "gunicorn" => "0.14.1", "django" => "1.3", "django-tagging" => "0.3.1", "simplejson" => "2.1.6", "Twisted" => "11.0.0", "python-memcached" => "1.47", "txAMQP" => "0.4", "pytz" => "2012b" }
default[:graphite][:configuration_files] = [ "storage-schemas.conf", "carbon.conf" ] 
default[:graphite][:admin_password] = "password"
default[:graphite][:schema] = {
 :all => {
   :pattern => ".*",
   :retentions => "60s:1d"
 }
}
