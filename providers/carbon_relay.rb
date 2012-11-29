
action :create do
  new_resource.updated_by_last_action(true)
end

action :delete do
  new_resource.updated_by_last_action(true)
end
