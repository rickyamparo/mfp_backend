class Api::V1::DayNameController < ApplicationController

  def most_popular
    user = User.find(location_params[:user_id])
  end

  def least_popular
    user = User.find(location_params[:user_id])
  end

  private

  def day_params
    params.permit(:user_id, :day_name)
  end

end
