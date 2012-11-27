
def lookup_cache_resources
  a = run_context.resource_collection
  a.select { |i| i.resource_name == :graphite_carbon_cache }
end
