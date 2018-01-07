class Api::V1::BusinessIntelligenceController < ApplicationController

  def most_visited
    most_visited_arr = Location.most_visited(select_user)
    render json: format_return(most_visited_arr)
  end

  def least_visited
    least_visited_arr = Location.least_visited(select_user)
    render json: format_return(least_visited_arr)
  end

  def favorite_weekday
    fav_wkday_arr = Location.favorite_weekday(select_user)
    render json: format_return(fav_wkday_arr)
  end

  def favorite_weekend
    fav_wkend_arr = Location.favorite_weekend(select_user)
    render json: format_return(fav_wkend_arr)
  end

  def format_return(query_response)
    {coordinates: {longitude: query_response[0][0], latitude: query_response[0][1]}, times_visited: query_response[1]}
  end

  def select_user
    User.find(location_params[:user_id])
  end

  private

  def location_params
    params.permit(:user_id)
  end
end
