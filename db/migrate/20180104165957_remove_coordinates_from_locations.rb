class RemoveCoordinatesFromLocations < ActiveRecord::Migration[5.1]
  def change
    remove_column :locations, :coordinates, :string
    add_column    :locations, :longitude,   :string
    add_column    :locations, :latitude,    :string
  end
end
