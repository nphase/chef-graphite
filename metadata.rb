maintainer       "Miah Johnson"
maintainer_email "miah@chia-pet.org"
license          "Free as in beer"
description      "Installs/Configures Graphite"
name             "graphite"
version          "1.0.0"

%w[ python runit ].each do |cookbook|
  depends cookbook
end

recipe "_cairo_install_from_package.rb", "Installs Cairo via package resource."
recipe "_cairo_install_from_source.rb", "Installs Cairo via pip."
recipe "_carbon_cache_runit.rb", "Starts Carbon via runit."
recipe "_carbon_config.rb", "Installs configuration file for Carbon."
recipe "_carbon_config_storage_schemas.rb", "Installs Carbon storage configuration template."
recipe "_carbon_install_from_pip.rb", "Installs Carbon Web via pip."
recipe "_graphite_config_local_settings.rb", "Installs database and cluster configuration."
recipe "_graphite_install_from_pip.rb", "Installs Graphite Web via pip."
recipe "_graphite_runit.rb", "Starts Graphite Web with runit."
recipe "_graphite_support_packages.rb", "Installs pythong packages required by Graphite."
recipe "_graphite_syncdb.rb", "Creates the initial data base tables required by Graphite Web."
recipe "_graphite_virtualenv.rb", "Builds the Python virtual environment for Graphite."
recipe "_group.rb", "Creates the Graphite group."
recipe "_pip_cleanup.rb", "Changes owner/group on Graphite installation directory."
recipe "_user.rb", "Creates the Graphite user."
recipe "_whisper_install_from_pip.rb", "Installs Whisper via pip."
recipe "default.rb", "Simply executes graphite::graphite."
recipe "graphite.rb", "Executes several recipes to produce a working Graphite installation."
