module Meowth
  module Generators
    class InstallGenerator < Rails::Generators::Base
      desc 'Install Meowth config file'
      source_root File.expand_path('../templates', __FILE__)

      def copy_config
        template 'config/meowth.yml'
      end
    end
  end
end
