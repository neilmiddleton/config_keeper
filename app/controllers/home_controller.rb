class HomeController < ApplicationController

  before_filter :authenticate_user!
  before_filter :check_for_api_token

  def index
  end

  private

  def check_for_api_token
    if current_user.api_token_required?
      redirect_to edit_user_registration_path(current_user),
        notice: t(:api_token_required),
        required: :api_token
    end
  end

end
