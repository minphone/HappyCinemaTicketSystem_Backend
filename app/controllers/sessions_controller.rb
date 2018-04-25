class SessionsController < ApplicationController

  def new
    
  end

  def create
    user = User.find_by(username: params[:session][:username].downcase)
    if user && user.authenticate(params[:session][:password]) && user.admin
      session[:user_id] = user.id
      flash[:success] = "Successful Log In"
      redirect_to root_path
    elsif user && user.authenticate(params[:session][:password])
      flash.now[:danger] = "Your are not Admin. Please check your login information"
    else
      flash.now[:danger] = "There was something wrong with your login information."
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "Successful Log Out"
    redirect_to root_path
  end

end