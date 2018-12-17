ENV['RACK_ENV'] ||= "production"

require 'bundler/setup'
Bundler.require(:default, ENV['RACK_ENV'].to_sym)

configure ENV['RACK_ENV'].to_sym do
  set :database, "sqlite3:db/#{ENV['RACK_ENV']}.sqlite"
end

require_all 'app'
