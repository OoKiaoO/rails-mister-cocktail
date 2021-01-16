# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "json"
require "rest-client"

response = RestClient.get "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
parsed = JSON.parse(response)
ingredients = []

parsed["drinks"].each do |ingredient|
  ingredients << ingredient["strIngredient1"]
end

ingredients << "despair"
ingredients << "resignation"
ingredients << "patience"
ingredients << "pain"

puts "Cleaning database..."
Ingredient.destroy_all

puts "Fetching the right ingredients. . ."

ingredients.each do |ingredient|
  Ingredient.create!(
    { name: ingredient }
  )
  puts "#{ingredient} added!"
end

puts "All done!"
