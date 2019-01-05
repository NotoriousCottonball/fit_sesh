require_relative "./concerns/slugifiable.rb"

class Workout < ActiveRecord::Base
  belongs_to :user
  has_many :exercises, :through => :exercise_instances
  has_many :exercise_instances
  validates :duration_minutes, presence: true
  validates :rating, presence: true
  validates :user_id, presence: true

  extend Slugifiable::ClassMethods
  include Slugifiable::InstanceMethods
end
