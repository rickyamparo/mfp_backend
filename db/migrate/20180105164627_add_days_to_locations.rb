class AddDaysToLocations < ActiveRecord::Migration[5.1]
  def change
    add_column :locations, :day_name, :string
    add_column :locations, :day_number, :string
  end
end
