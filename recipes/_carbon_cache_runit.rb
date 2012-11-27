include_recipe 'runit'

graphite_carbon_cache 'default' do
  port 2003
  pickle_port 2004
  query_port 7002
  listen_on '0.0.0.0'
end
