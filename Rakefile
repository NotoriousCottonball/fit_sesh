ENV['RACK_ENV'] ||= "production"
require_relative './config/environment'
require 'sinatra/activerecord/rake'

desc 'Shows Current Rack Environment'
task :show_environment do
  puts "The Current Environment is #{ENV['RACK_ENV'].upcase}"
end
# Type `rake -T` on your command line to see the available rake tasks.
