class Api::V1::BusinessIntelligenceController < ApplicationController

  def most_visited
    user = User.find(location_params[:user_id])
    most_visited_arr = Location.where(user_id: user.id).group(:longitude, :latitude).count.max
    return_value = {coordinates: {longitude: most_visited_arr[0][0], latitude: most_visited_arr[0][1]}, times_visited: most_visited_arr[1]}
    render json: return_value
  end

  def least_visited
    user = User.find(location_params[:user_id])
    most_visited_arr = Location.where(user_id: user.id).group(:longitude, :latitude).count.min
    return_value = {coordinates: {longitude: most_visited_arr[0][0], latitude: most_visited_arr[0][1]}, times_visited: most_visited_arr[1]}
    render json: return_value
  end

  private

  def location_params
    params.permit(:user_id)
  end
end
