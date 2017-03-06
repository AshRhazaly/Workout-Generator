require 'test_helper'

class WorkoutTest < ActiveSupport::TestCase
  test "the workout name must be a string" do
    assert_equal true, workouts(:one).name.is_a?(String)
  end
end
