class HomeController < ApplicationController
  def index
    redirect_to user_login_path unless user_signed_in? || admin_signed_in?
  end
end
