User.destroy_all

user = User.create(name: 'testuser', email: 'test@test.com', password: 'password')

Location.destroy_all

months = [1,2,3,4,5,6,7,8,9,10,11,12]
days_in_months = [31,28,31,30,31,30,31,31,30,31,30,31]

location_coordinates = {turing: ["39.751073", -"104.996573"],
                        cafe: ["39.735198", -"104.945879"],
                        park: ["39.732920", -"104.967930"],
                        home: ["39.734728", -"104.959488"],
                        concert: ["39.741500", -"104.977060"],
                        brunch: ["39.740643", -"104.949088"]}

def weighted_locations(location_coordinates)
  [location_coordinates[:turing],
   location_coordinates[:turing],
   location_coordinates[:turing],
   location_coordinates[:turing],
   location_coordinates[:home],
   location_coordinates[:home],
   location_coordinates[:cafe],
   location_coordinates[:park],
   location_coordinates[:concert],
   location_coordinates[:brunch]].sample
end

months.each_with_index do |value, index|
  number_of_days = days_in_months[index]
  current_day = 1
  number_of_days.times do
    current_date = Date.new(2017,value,current_day).to_time
    current_day += 1
    Location.create(longitude: weighted_locations(location_coordinates)[0],
                    latitude: weighted_locations(location_coordinates)[1],
                    created_at: current_date,
                    updated_at: current_date,
                    user_id: user.id,
                    day_name: current_date.strftime("%A"),
                    day_number: current_day)
  end
end
