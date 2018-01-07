class Api::V1::BusinessIntelligence < ApplicationController

  def most_visited
  end

  def location_params
    params.permit(:user_id)
  end
end
