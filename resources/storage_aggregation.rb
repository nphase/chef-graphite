
actions :create, :delete

default_action :create

legal_methods = %w(average sum min max last)

attribute :name, :kind_of => String
attribute :pattern, :kind_of => [String, Regexp]
attribute :x_files_factor, :kind_of => [String, Float]
attribute :aggregation_method, :kind_of => String, :equal_to => legal_methods, :default => 'average'
