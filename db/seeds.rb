# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all


  dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category:"italian", phone_number:"0123907857" }
  pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category:"japanese", phone_number:"0123934857" }
  pays_asi =  { name: "Pays Asi", address: "7A Shoreditch , Lille 59 000", category:"japanese", phone_number:"0123934857" }
  paradise =  { name: "Paradise", address: "15 rue Inkermann , Lille 59 000", category:"french", phone_number:"0167934857" }
  chez_jojo =  { name: "Chez Jojo", address: "10 rue National , Lille 59 000", category:"belgian", phone_number:"0167990857" }
[ dishoom, pizza_east, pays_asi, paradise,chez_jojo ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"

end
