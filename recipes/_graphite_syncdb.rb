execute "syncdb" do
  command "#{node['graphite']['virtualenv']}/bin/django-admin.py syncdb --settings=graphite.settings --pythonpath=webapp"
  user node['graphite']['user'] 
  cwd node['graphite']['user_home']
  action :nothing
end
