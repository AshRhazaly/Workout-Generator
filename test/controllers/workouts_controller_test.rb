require 'test_helper'

class WorkoutsControllerTest < ActionDispatch::IntegrationTest
  test "can create a workout" do
    assert_difference('Workout.count') do
      post workouts_url, params: { workout: { name: 'Name of workout'} }
    end
  end

  test "can delete a workout" do
    workout = workouts(:one)
    assert_difference('Workout.count', -1) do
      delete workout_url(workout)
    end
  end

end

# test "should destroy article" do
#   article = articles(:one)
#   assert_difference('Article.count', -1) do
#     delete article_url(article)
#   end
#
#   assert_redirected_to articles_path
# end
# it "creates article" do
#   article_params = FactoryGirl.attributes_for(:article)
#   expect { post :create, :article => article_params }.to change(Article, :count).by(1)
# end

# test "should create article" do
#   assert_difference('Article.count') do
#     post articles_url, params: { article: { body: 'Rails is awesome!', title: 'Hello Rails' } }
#   end
#
#   assert_redirected_to article_path(Article.last)
# end
