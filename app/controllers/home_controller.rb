class HomeController < ApplicationController
  def home
    if logged_in?
      redirect_to movies_path
    else
      redirect_to login_path
    end
  end
end