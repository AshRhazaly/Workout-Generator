class ApplicationController < ActionController::Base
  before_filter :authenticate_with_token
  protect_from_forgery with: :exception
end
