require_relative "./concerns/slugifiable.rb"

class Workout < ActiveRecord::Base

  belongs_to :user
  has_many :exercise_instances
  has_many :exercises, :through => :exercise_instances
  
  validates :duration_minutes, presence: true
  validates :user_id, presence: true
  validates :share_status, inclusion: {in: [true, false]}

  extend Slugifiable::ClassMethods
  include Slugifiable::InstanceMethods
end
