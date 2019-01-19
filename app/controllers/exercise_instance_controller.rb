class ExercisesController < ApplicationController

  get "/exercise_instances/new/:id" do
    redirect_if_not_logged_in
    @workout = Workout.find(params[:id])
    if @workout.user == current_user
      @exercises = Exercise.all
      erb :"/exercise_instances/new"
    else
      flash[:error] = "You are Not Authorized to Modify This Workout!"
      redirect to "/workouts/#{@workout.id}"
    end
  end

  post '/exercise_instances/new/:id' do
    redirect_if_not_logged_in
    params[:exercise_instance][:workout_id] = params[:id]
    @exercise_instance = ExerciseInstance.new(params[:exercise_instance])
    if !params["exercise"]["name"].empty? && !params["exercise"]["description"].empty?
      @exercise = Exercise.create(name: params["exercise"]["name"].split(/\b/).map(&:capitalize).join, description: params["exercise"]["description"])
      @exercise_instance.exercise = @exercise
    end
    if @exercise_instance.save
      flash[:message] = "Exercise Entry Successfully Added"
      redirect to "/workouts/#{params[:id]}"
    else
      @exercise.destroy if @exercise
      flash[:error] = "Exercise Entry Creation Failure: #{@exercise_instance.errors.full_messages.to_sentence}"
      redirect to "/workouts/#{params[:id]}"
    end
  end

  delete '/exercise_instances/:id' do
     redirect_if_not_logged_in
     @exercise_instance = ExerciseInstance.find(params[:id])
     @workout = @exercise_instance.workout
     if @exercise_instance.user == current_user
       @exercise_instance.destroy
       flash[:message] = "Exercise Entry Successfully Deleted"
       redirect to "/workouts/#{@workout.id}"
     else
       flash[:error] = "You are Not Authorized to Delete This Exercise Entry!"
       redirect to "/workouts/#{@workout.id}"
     end
   end
end
