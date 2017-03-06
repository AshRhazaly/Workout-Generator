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


# test "can create an article" do
#   get "/articles/new"
#   assert_response :success
#
#   post "/articles",
#     params: { article: { title: "can create", body: "article successfully." } }
#   assert_response :redirect
#   follow_redirect!
#   assert_response :success
#   assert_select "p", "Title:\n  can create"
# end
