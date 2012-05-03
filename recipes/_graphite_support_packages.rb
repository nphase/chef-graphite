include_recipe "python"

python_pkgs = node['graphite']['packages'].collect do |pkg, ver|
  python_pip pkg do
    version ver
    virtualenv node['graphite']['virtualenv']
    action :install
  end
end
