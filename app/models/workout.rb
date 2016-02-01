class Workout < ActiveRecord::Base
  validates :name, :set, :rep, :day, presence: true
end
