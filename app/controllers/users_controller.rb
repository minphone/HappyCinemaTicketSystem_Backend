class UsersController < ApplicationController
  before_action :set_user, only: [:update, :show, :destroy]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.username.downcase!
    @user.admin = true
    if @user.save
      session[:user_id] = @user.id
      flash[:success] = "Welcome to #{@user.username}."
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show   
  end

  def update
    if @user.update(user_params)
      flash[:success] = "Your Profile is successfully updated"
      redirect_to root_path
    else
      render 'show'
    end
  end

  def index
    @users = User.paginate(page: params[:page], per_page: 10)
  end

  def destroy
    @user.destroy
    flash[:danger] = "User was successful deleted"
    redirect_to users_path
  end

  private 
    def user_params
      params.require(:user).permit(:username, :email, :password, :admin)
    end
    def set_user
      @user = User.find(params[:id])
    end
end