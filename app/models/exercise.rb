require_relative "./concerns/slugifiable.rb"

class Exercise < ActiveRecord::Base
  has_many :workouts, :through => :exercise_instances
  has_many :users, :through => :workouts
  has_many :exercise_instances

  validates :name, presence: true
  validates :description, presence:true

  extend Slugifiable::ClassMethods
  include Slugifiable::InstanceMethods

end
