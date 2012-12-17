class AppsController < ApplicationController

  before_filter :connect_to_heroku

  def index
    @apps = @heroku.apps
  end

  def show
    @app = @heroku.app(params[:name])
    @config = @heroku.config_for(params[:name])
  end

end
