require 'test_helper'

class WorkoutFlowTest < ActionDispatch::IntegrationTest
  #test root
  test "home page is workouts#index" do
    get workouts_url
    assert_select "h1", "Workouts#index"
  end

  test "create a workout and display workout" do
    get "/workouts/new"
    assert_response :success

    post "/workouts",
      params: { workout: { name: "can create" } }
    assert_response :redirect
    follow_redirect!
    assert_response :success
    assert_select "p", "Name: it works!"
  end
end
