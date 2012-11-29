
def lookup_resources(resource)
  a = run_context.resource_collection
  a.select { |i| i.resource_name == resource }
end
