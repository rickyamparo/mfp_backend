class Location < ApplicationRecord
  belongs_to :user

  def self.most_visited(user)
    Location.where(user_id: user).group(:longitude, :latitude).count.max
  end

  def self.least_visited(user)
    Location.where(user_id: user).group(:longitude, :latitude).count.min
  end

  def self.favorite_weekday(user)
    Location.where(user_id: user).where(day_name: ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday']).group(:longitude, :latitude).count.max
  end

  def self.favorite_weekend(user)
    Location.where(user_id: user).where(day_name: ['Saturday', 'Sunday']).group(:longitude, :latitude).count.max
  end

end
