class WorkoutsController < ApplicationController

  get "/workouts/new" do
    redirect_if_not_logged_in
    erb :"/workouts/new"
  end

  post "/workouts" do
    redirect_if_not_logged_in
    if params[:name] != "" && params[:vineyard] != "" && params[:rating] != "" && params[:year] != "" && params[:tasting_notes] != ""
      @wine = Wine.create(name: params[:name], vineyard: params[:vineyard], year: params[:year], rating: params[:rating], tasting_notes: params[:tasting_notes], user_id: current_user.id)
      flash[:message] = "Wine successfully added."
      redirect "/wines/#{@wine.id}"
    else
      flash[:error] = "Something went wrong - you must fill in all of the required fields for your entry."
      redirect '/wines/new'
    end
  end

  get "/workouts/:id" do
    redirect_if_not_logged_in
    @workout = Workout.find(params[:id])
    if @workout.share_status == true
      erb :'/workouts/show'
    else
      if @workout.user == current_user
        erb :'/workouts/show'
      else
        flash[:error] = "Your are Not Authorized to View that Private Workout!"
        redirect to "/"
      end
    end
  end

  delete "/workouts/:id" do
    redirect_if_not_logged_in
    @workout= Workout.find(params[:id])
    if @workout.user == current_user
      @workout.destroy
      flash[:message] = "Workout Successfully Deleted"
      redirect to "/users/#{current_user.slug}"
    else
      flash[:error] = "Your are Not Authorized to Delete This Workout!"
      redirect to "/workouts/#{@workout.id}"
    end
  end

end

=begin



  get "/wines/:id/edit" do
    redirect_if_not_logged_in
    @wine = Wine.find(params[:id])
    erb :'wines/edit'
  end

  patch "/wines/:id" do
    redirect_if_not_logged_in
    @wine = Wine.find(params[:id])
    if params[:rating].empty? || params[:tasting_notes].empty?
      flash[:error] = "You cannot edit a wine review without a rating and tasting_notes."
      redirect "/wines/#{@wine.id}/edit"
    else
      @wine.update(rating: params[:rating], tasting_notes: params[:tasting_notes])
      @wine.save
      flash[:message] = "Successfully edited the wine."
      redirect "/wines/#{@wine.id}"
    end
  end


=end
