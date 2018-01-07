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

  def self.most_popular(user, day_name)
    Location.where(user_id: user).where(day_name: day_name).group(:longitude, :latitude).count.max
  end

  def self.least_popular(user, day_name)
    Location.where(user_id: user).where(day_name: day_name).group(:longitude, :latitude).count.min
  end

  def self.most_popular_day_number(user, day_number)
    Location.where(user_id: user).where(day_number: day_number).group(:longitude, :latitude).count.max
  end

end
