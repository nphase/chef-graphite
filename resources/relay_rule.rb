
actions :create, :delete

default_action :create

attribute :name, :kind_of => String
attribute :pattern, :kind_of => [String, Regexp]
attribute :servers, :kind_of => [String, Array]
