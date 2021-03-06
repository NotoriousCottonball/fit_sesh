require_relative "./concerns/slugifiable.rb"

class User < ActiveRecord::Base
  has_secure_password

  has_many :workouts
  has_many :exercises, :through => :workouts
  has_many :exercise_instances, :through => :workouts

  validates :username, presence: true
  validates :username, uniqueness: true
  validates :email, presence: true
  validates :email, uniqueness: true
  validates_format_of :email, :with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
  validates :password, length: {minimum: 6}, allow_nil: true #loses the cached value for password on reload from database

  extend Slugifiable::ClassMethods
  include Slugifiable::InstanceMethods
end
