# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
TruckInfo.create(truck_plate: "30A-50493", cargo_type: "Computer, Electronic",
  driver: "Nguyễn Văn A" , truck_type: "5 ton", price: 1000000000,
  dimension: "10-2-1.5", parking_address: "No. 128, Hoàn Kiếm street, Hà Nội",
  production_year: "2010", status: "In-use", description: "Nothing")
