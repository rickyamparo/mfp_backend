class UsersController < ApplicationController
  skip_before_action :authenticate_request
  
  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user
    else
      render json: @user.errors, status: 400
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :name)
  end
end
