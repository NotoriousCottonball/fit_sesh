require './config/environment'
class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, ENV.fetch('SESSION_SECRET'){`bundle config session_secret`.slice(142..-1)}
  end

  get '/' do
    erb :index
  end
end
