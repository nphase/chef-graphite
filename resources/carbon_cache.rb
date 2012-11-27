
actions :create, :delete

default_action :create

attribute :port, :kind_of => Fixnum, :default => 2003
attribute :pickle_port, :kind_of => Fixnum, :default => 2004
attribute :query_port, :kind_of => Fixnum, :default => 7002
attribute :listen_on, :kind_of => String, :default => '0.0.0.0'
attribute :udp, :kind_of => [TrueClass, FalseClass], :default => false
