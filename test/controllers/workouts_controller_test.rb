require 'test_helper'

class WorkoutsControllerTest < ActionDispatch::IntegrationTest
  test "can create a workout" do
    assert_difference('Workout.count') do
      post workouts_url, params: { workout: { name: 'Name of workout'} }
    end
  end

  test "can show a workout" do
    workout = workouts(:one)
    get workout_url(workout)
    assert_response :success
  end

  test "can delete a workout" do
    workout = workouts(:one)
    assert_difference('Workout.count', -1) do
      delete workout_url(workout)
    end
  end

  test "can update a workout" do
    workout = workouts(:one)
    patch workout_url(workout), params: { workout: {name: "updated"} }

    assert_redirected_to workouts_url
    workout.reload
    assert_equal "updated", workout.name
  end
  
end
