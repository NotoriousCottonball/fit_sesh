ENV['RACK_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['RACK_ENV'].to_sym)

configure ENV['RACK_ENV'].to_sym do
  set :database, "sqlite3:db/#{ENV['RACK_ENV']}.sqlite"
end

require_all 'app'
