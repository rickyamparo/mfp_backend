class Api::V1::DayNameController < ApplicationController

  def most_popular
    location = Location.most_popular(select_user, day_params[:day_name])
    render json: format_return(location)
  end

  def least_popular
    location = Location.least_popular(select_user, day_params[:day_params])
    render json: format_return(location)
  end

  def format_return(query_response)
    {coordinates: {longitude: query_response[0][0], latitude: query_response[0][1]}, times_visited: query_response[1]}
  end

  private

  def select_user
    user = User.find(day_params[:user_id])
  end

  def day_params
    params.permit(:user_id, :day_name)
  end

end
