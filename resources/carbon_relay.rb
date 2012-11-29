
actions :create, :delete

default_action :create

attribute :port, :kind_of => Fixnum, :default => 2013
attribute :pickle_port, :kind_of => Fixnum, :default => 2014
attribute :listen_on, :kind_of => String, :default => '0.0.0.0'
