module WdwSources
    class InstallGenerator < Rails::Generator::Base
        def install
            run "bundle install"
            rake "wdw_sources:install:migrations"
            rake "db:migrate"
        end
        
    end
    
end