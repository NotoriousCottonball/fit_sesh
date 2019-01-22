class WorkoutsController < ApplicationController

  get "/workouts/new" do
    redirect_if_not_logged_in
    erb :"/workouts/new"
  end

  post "/workouts" do
    redirect_if_not_logged_in
      @workout = current_user.workouts.new(params[:workout])
      if @workout.save
        flash[:message] = "Workout Successfully Created. ADD Exercise Entries Below:"
        redirect to "/workouts/#{@workout.id}"
      else
        flash[:error] = "Workout Creation Failure: #{@workout.errors.full_messages.to_sentence}"
        redirect '/workouts/new'
      end
  end

  get "/workouts/:id" do
    redirect_if_not_logged_in
    session[:workout_id] = params[:id]
    @workout = Workout.find(session[:workout_id])
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

  get "/workouts/:id/edit" do
    redirect_if_not_logged_in
    @workout = Workout.find(params[:id])
    if @workout.user == current_user
      erb :'workouts/edit'
    else
      flash[:error] = "You're Not Authorized to Edit that Workout!"
      redirect to "/"
    end
  end

  patch "/workouts/:id" do
    redirect_if_not_logged_in
    @workout = Workout.find(params[:id])
    if @workout.user == current_user
      if @workout.update(params[:workout])
        flash[:message] = "Workout Successfully Edited."
        redirect to "/workouts/#{@workout.id}"
      else
      flash[:error] = "Workout Edit Failure: #{@workout.errors.full_messages.to_sentence}"
      redirect to "/workouts/#{@workout.id}"
      end
    else
      flash[:error] = "You're Not Authorized to Edit that Workout!"
      redirect to "/"
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
      flash[:error] = "You're Not Authorized to Delete This Workout!"
      redirect to "/workouts/#{@workout.id}"
    end
  end

end
