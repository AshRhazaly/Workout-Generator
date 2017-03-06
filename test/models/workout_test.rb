require 'test_helper'

class WorkoutTest < ActiveSupport::TestCase
  test "the workout name must be a string" do
    assert_equal true, workouts(:one).name.is_a?(String)
  end

  test "the workout must not be empty" do
    workout = Workout.new
    assert_not workout.save
  end
end

# posts(:one).title  = nil
# assert_nil posts(:one).title
# assert_equal false, posts(:one).valid?
