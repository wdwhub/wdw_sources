# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require_relative "../app/models/wdw_sources/touringplans_update.rb"
# cache data from touringplans.com
puts "syncing attractions".upcase
WdwSources::TouringplansUpdate.sync_all('attractions')
puts "syncing dining".upcase
WdwSources::TouringplansUpdate.sync_all('dining')
puts "syncing hotels".upcase
WdwSources::TouringplansUpdate.sync_all('hotels')