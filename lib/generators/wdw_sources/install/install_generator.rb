# 
# 
# frozen_string_literal: true

require 'rails/generators/base'

module WdwSources
    module Generators
        class InstallGenerator < Rails::Generators::Base
        end        
    end
    class InstallGenerator < Rails::Generator::Base
        def install
            run "bundle install"
            rake "wdw_sources:install:migrations"
            rake "db:migrate"
        end
        
    end
    
end
