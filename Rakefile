ENV['RACK_ENV'] ||= "development"
require_relative './config/environment'
require 'sinatra/activerecord/rake'

desc 'Shows current environment'
task :show_environment do
  puts "RACK_ENV: #{ENV['RACK_ENV']}\nSESSION_SECRET: #{`bundle config session_secret`.slice(142..-1)}"
end

desc 'Sets session secret'
task :session_secret do
  require 'securerandom'
  secure_random = SecureRandom.hex(64)
  `bundle config session_secret #{secure_random}`
  puts "SESSION_SECRET: #{`bundle config session_secret`.slice(142..-1)}"
end

# Type `rake -T` on your command line to see the available rake tasks.
