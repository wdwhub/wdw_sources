# desc "Explaining what the task does"
# task :wdw_sources do
#   # Task goes here
# end
namespace :db do
  namespace :WdwSources do
    desc "loads all seeds in db/seeds.rb"
    task :seeds  => :environment do
      puts "Loading WdwSources db/seeds.rb"
      WdwSources::Engine.load_seed
    end

    # namespace :seed do
    #     Dir[Rails.root.join('WdwSources', 'db', 'seeds', '*.rb')].each do |filename|
    #       task_name = File.basename(filename, '.rb')
    #       desc "Seed "      task_name      ", based on the file with the same name in `db/seeds/*.rb`"
    #       task task_name.to_sym => :environment do
    #         load(filename) if File.exist?(filename)
    #       end
    #     end
    #   end
  end
end 

