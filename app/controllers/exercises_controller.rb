class ExercisesController < ApplicationController

  get '/exercises' do
    redirect_if_not_logged_in
    @exercises = Exercise.all
    @top_exercises_array = ExerciseInstance.group(:exercise).average(:exercise_rating).sort_by {|k,v| v}.reverse
    erb :'exercises/index'
   end

   get "/exercises/new" do
     redirect_if_not_logged_in
     erb :"/exercises/new"
   end

   post '/exercises' do
     redirect_if_not_logged_in
     @exercise = Exercise.new(name: params[:name].split(/\b/).map(&:capitalize).join, description: params[:description])
     if @exercise.save
      flash[:message] = "Exercise Successfully Added"
      redirect to "/exercises/#{@exercise.slug}"
     else
      flash[:error] = "Exercise Creation Failure: #{@exercise.errors.full_messages.to_sentence}"
      redirect to '/exercises/new'
     end
   end

   get '/exercises/:slug' do
    redirect_if_not_logged_in

    @exercise = Exercise.find_by_slug(params[:slug])
    @users = User.all
    @avg_rating = @exercise.exercise_instances.average(:exercise_rating)
    erb :'exercises/show'
   end

end
