class AppsController < ApplicationController

  before_filter :connect_to_heroku

  def index
    @apps = @heroku.apps
  end

  def show
    @app = @heroku.app(params[:name])
    @config = @heroku.config_for(params[:name])
  end

  def sync_to_repo
    @heroku.sync_keys_to_store(params[:id])
    redirect_to app_path(params[:name]),
      :notice => t(:imported, default: "Keys imported")
  end

end
