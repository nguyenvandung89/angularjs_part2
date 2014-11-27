class Api::UsersController < ApplicationController

  def index
    render json: User.all
  end

  def show
    render json: user
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    @user.save
    render json: User.all
  end

  def update
    user.update(user_params)
    render json: user
  end
  
  def destroy
    user.destroy
    render json: {message: "user was deleted."}
  end

  private
  def user_params
    params.require(:user).permit!
  end

  def user
    @user = User.find params[:id]
  end
end
