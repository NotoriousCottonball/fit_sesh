require_relative "./concerns/slugifiable.rb"

class ExerciseInstance < ActiveRecord::Base
  belongs_to :workout
  belongs_to :exercise

  validates :workout_id, presence: true
  validates :exercise_id, presence: true
  validates :weight_lbs, presence: true
  validates :sets, presence: true
  validates :reps, presence: true
  validates :exercise_rating, inclusion: {in: [1, 2, 3, 4, 5]}

  extend Slugifiable::ClassMethods
  include Slugifiable::InstanceMethods
end
