# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "japanese" }
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian"}
the_tree = {name: "The Tree", address: "Brunnenstrasse 167, Berlin", category: "chinese"}
bunnys_waffles = {name: "Bunny's Waffles", address: "Prenzlberg, Berlin", category: "belgian"}
paulines_cafe = {name: "Pauline's Cafe", address: "Pankow, Berlin", category: "french"}

[dishoom, pizza_east, the_tree, bunnys_waffles, paulines_cafe].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
