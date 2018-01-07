class Api::V1::DayNumberController < ApplicationController

  def most_popular
    user = User.find(day_params[:user_id])
    location = Location.where(user_id: user).where(day_number: day_params[:day_number]).group(:longitude, :latitude).count.max
    return_value = {coordinates: {longitude: location[0][0], latitude: location[0][1]}, times_visited: location[1]}
    render json: return_value
  end

  private

  def day_params
    params.permit(:user_id, :day_number)
  end

end
