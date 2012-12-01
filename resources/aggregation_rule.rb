
actions :create, :delete

default_action :create


attribute :name, :kind_of => String
attribute :output_template, :kind_of => String
attribute :frequency, :kind_of => [String, Fixnum]
attribute :method, :kind_of => String, :equal_to => ['sum', 'avg']
attribute :input_pattern, :kind_of => [String, Regexp]
