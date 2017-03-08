class ApplicationController < ActionController::Base
  before_filter :authenticate_with_token
  protect_from_forgery with: :exception

  private
  def authenticate_with_token
    if params[:api_token]
      user = User.find_by_api_token(params[:api_token])
      sign_in(user)
    end
  end
end
