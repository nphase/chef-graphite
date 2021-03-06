default['graphite']['virtualenv'] = '/opt/graphite/.venv/'
default['graphite']['app_dir'] = '/opt/graphite/webapp/graphite/'
default['graphite']['conf_dir'] = '/opt/graphite/conf/'
default['graphite']['data_dir'] = '/opt/graphite/storage/'
default['graphite']['home_dir'] = '/opt/graphite/share/graphite/'
default['graphite']['log_dir'] = '/opt/graphite/log/'
default['graphite']['pid_dir'] = '/var/run/graphite'
default['graphite']['webapp_dir'] = '/opt/graphite/webapp/'
default['graphite']['user'] = 'graphite'
default['graphite']['group'] = 'graphite'
default['graphite']['user_home'] = '/opt/graphite/'
default['graphite']['carbon']['user'] = 'graphite'
default['graphite']['graphite_web']['user'] = 'graphite'
default['graphite']['graphite_web']['version'] = '0.9.10'
default['graphite']['cairo']['source']['url'] = 'http://cairographics.org/releases/'
default['graphite']['cairo']['source']['version'] = '1.10.0'
default['graphite']['carbon']['line_rcvr_addr'] = '0.0.0.0'
default['graphite']['carbon']['pickle_rcvr_addr'] = '0.0.0.0'
default['graphite']['carbon']['cache_query_addr'] = '0.0.0.0'
default['graphite']['carbon']['version'] = '0.9.10'
default['graphite']['db']['admin_email'] = 'graphite@example.com'
default['graphite']['db']['admin_password'] = 'sha1$aaab5$56123f60bc5dcb3b60076928f868ab881245f1fc'
default['graphite']['db']['admin_user'] = 'graphite'
default['graphite']['whisper']['user'] = 'graphite'
default['graphite']['whisper']['version'] = '0.9.10'

default['graphite']['packages'] = {
  'gunicorn' => '0.14.1',
  'django' => '1.3',
  'django-tagging' => '0.3.1',
  'simplejson' => '2.1.6',
  'Twisted' => '11.0.0',
  'python-memcached' => '1.47',
  'txAMQP' => '0.4',
  'pytz' => '2012b'
}

default['graphite']['schema'] = {
 :all => {
   :pattern => '.*',
   :retentions => '60s:1d'
 }
}
