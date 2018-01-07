class Api::V1::DayNumberController < ApplicationController

  def most_popular
    user = User.find(day_params[:user_id])
    location = Location.most_popular_day_number(user, day_params[:day_number])
    render json: format_return(location)
  end

  def format_return(query_response)
    {coordinates: {longitude: query_response[0][0], latitude: query_response[0][1]}, times_visited: query_response[1]}
  end

  private

  def day_params
    params.permit(:user_id, :day_number)
  end

end
