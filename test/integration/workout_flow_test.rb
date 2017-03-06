require 'test_helper'

class WorkoutFlowTest < ActionDispatch::IntegrationTest
  #test root
  test "home page is workouts#index" do
    get workouts_url
    assert_select "h1", "Workouts#index"
  end
end
