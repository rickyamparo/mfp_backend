# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.destroy_all
#
# User.create(name: 'testuser', email: 'test@test.com', password: 'password')
#
# Location.destroy_all

months = [1,2,3,4,5,6,7,8,9,10,11,12]
days_in_months = [31,28,31,30,31,30,31,31,30,31,30,31]

months.each_with_index {|val, index| puts "#{val}/#{days_in_months[index]}"}
