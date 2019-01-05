require_relative "./concerns/slugifiable.rb"

class ExerciseInstance < ActiveRecord::Base
  belongs_to :workout
  belongs_to :exercise

  validates :workout_id, presence: true
  validates :exercise_id, presence: true
  validates :weight_lbs, presence: true
  validates :sets, presence: true
  validates :reps, presence: true
  validates :exercise_rating, presence: true


  extend Slugifiable::ClassMethods
  include Slugifiable::InstanceMethods
end
