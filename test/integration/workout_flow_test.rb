require 'test_helper'

class WorkoutFlowTest < ActionDispatch::IntegrationTest
  #test root
  test "home page is workouts#index" do
    get workouts_url
    assert_select "h1", "Workouts#index"
  end

  test "create a workout redirects" do
    post "/workouts",
      params: {workout: {name: "This is my workout name"}}
    assert_response :redirect
    follow_redirect!
    assert_response :success
    assert_select "h2", "Workout title"
  end
end
