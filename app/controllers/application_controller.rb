require './config/environment'
class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, ENV.fetch('SESSION_SECRET'){`bundle config session_secret`.slice(142..-1)}
    register Sinatra::Flash
  end

  get '/' do
    erb :index
    raise ENV.inspect
  end

  helpers do
    def logged_in?
      !!current_user
    end

    def current_user
      @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end

    def redirect_if_not_logged_in
      if !logged_in?
        flash[:error] = "You must be logged in in to view that page."
        redirect to "/login"
      end
    end

    def redirect_if_logged_in
        if logged_in?
          flash[:message] = "You are already logged in. Welcome back #{current_user.username}!"
          redirect to "/"
        end
      end

    def authorized_to_edit?(wine)
      @workout.user == current_user
    end
  end
end
