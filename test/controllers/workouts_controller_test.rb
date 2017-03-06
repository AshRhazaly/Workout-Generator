require 'test_helper'

class WorkoutsControllerTest < ActionDispatch::IntegrationTest
  test "can create a workout" do
    assert_difference('Workout.count') do
      post workouts_url, params: { workout: { name: 'Name of workout'} }
    end
  end
end

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
