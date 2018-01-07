class Api::V1::BusinessIntelligence < ApplicationController

  def most_visited
    user = User.find(location_params[:user_id])
    render json: Location.where(user_id: user.id).group(:longitude, :latitude).count.max
  end

  def least_visited
    user = User.find(location_params[:user_id])
    render json: Location.where(user_id: user.id).group(:longitude, :latitude).count.min
  end

  def location_params
    params.permit(:user_id)
  end
end
