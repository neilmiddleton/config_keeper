class ApplicationController < ActionController::Base
  protect_from_forgery

  def connect_to_heroku
    @heroku = HerokuWrapper.new(current_user)
  end
end
