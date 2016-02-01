require 'rails_helper'

# RSpec.describe Workout, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

describe Workout do

  describe "workout to have valid fields" do
    it "contains valid fields" do
      workout = Workout.new(name: "Foo", set:1, rep:10, weight: 24.5, day:DateTime.now)
      expect(workout).to be_valid
    end
  end

  describe "workout should not have invalid fields" do
    it "does not contain valid field" do
      workout = Workout.new(name: "invalid", set:1, day:DateTime.now)
      expect(workout).to be_invalid
    end
  end

end