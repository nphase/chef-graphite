
actions :create

default_action :create

attribute :name, :kind_of => String, :name_attribute => true
attribute :port, :kind_of => Fixnum
attribute :listen_on, :kind_of => String, :default => '0.0.0.0'
