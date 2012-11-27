require File.expand_path('../support/helpers', __FILE__)

describe 'graphite::graphite' do
  include Helpers::Graphite

  it 'starts graphite' do
    service('graphite').must_be_running
  end

  it 'starts carbon_cache' do
    service('carbon-cache').must_be_running
  end

  describe 'graphite::_install_from_pip' do
    #it 'installs graphite' do
    #  package('graphite').must_be_installed
    #end
  end

  describe 'graphite::_graphite_config_local_settings' do
    it 'creates local_settings.py' do
      file("#{ node['graphite']['app_dir'] }/local_settings.py").must_exist
    end

    #it 'creates graphite.conf' do
    #  file("#{node['graphite']['sysconf_dir']}/collectd.conf").must_exist
    #end
  end

end
