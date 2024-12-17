# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Benefit.destroy_all
puts "All benefits destroyed"
Space.destroy_all
puts "All spaces destroyed"
Progress.destroy_all
puts "All progresses destroyed"
Project.destroy_all
puts "All projects destroyed"
User.destroy_all
puts "All users destroyed"

user = 0
project = 0
benefit = 0
space = 0

benefits_array = ["Fresh food",
  "Sustainability",
  "Air quality improvement",
  "Cost savings",
  "Self-reliance",
  "Decoration",
  "Privacy",
  "Zen spaces",
  "Seasonal colour",
  "Structural greenery",
  "Healthy eating",
  "Physical exercise",
  "Time outdoors",
  "Stress relief",
  "Fresh air",
  "Bonding activities",
  "Educational purposes",
  "Shared projects",
  "Group activity",
  "Neighborhood engagement"]

spaces_array = ["Balcony",
  "Terrace",
  "Windowsill",
  "Interior",
  "Garden",
  "Sunny",
  "Partial shade",
  "Dry",
  "Windy",
  "Humid",
  "Uneven or sloped",
  "Portable container-friendly",]

puts "Creating everything..."
20.times do
  last_user = User.create!(first_name: Faker::Name.first_name,
                last_name: Faker::Name.last_name,
                email: Faker::Internet.email,
                password: "123456"
              )
  puts "#{user = user + 1} users created"

  last_project = Project.create!(user: last_user,
    name: Faker::JapaneseMedia::StudioGhibli.movie,
    description: Faker::JapaneseMedia::StudioGhibli.quote,
    difficulty: rand(0..5),
    duration: "#{[0..10].sample} #{["days", "weeks", "months"].sample}")
  puts "#{project = project + 1} projects created"
end
puts "20 USERS & 20 PROJECTS CREATED"

20.times do
  Benefit.create(type_of_benefit: benefits_array[benefit])
  puts "#{benefit = benefit + 1} benefits created"
end
puts "20 BENEFITS CREATED"

spaces_array.each_with_index do |space, i|
  Space.create!(type_of_space: space)
  puts "#{i} spaces created"
end
puts "12 SPACES CREATED"

Florist.create!(name: "Floristeria Maria", address: "Pg. de St. Joan, 23, L'Eixample, 08010 Barcelona")
Florist.create!(name: "Floristeria NUNE", address: "Carrer de Sant Antoni Maria Claret, 42, Gràcia, 08025 Barcelona")
Florist.create!(name: "Floristeria Soriano", address: "Av. de Gaudí, 6, L'Eixample, 08025 Barcelona")
Florist.create!(name: "Floristería Floredana", address: "C/ de Sicília, 390, Gracia, 08025 Barcelonaa")
Florist.create!(name: "Ātmā Flors & Art", address: "C/ de Padilla, 254, Eixample, 08025 Barcelona")
Florist.create!(name: "Ladyflor", address: "Carrer de Bailèn, 169, L'Eixample, 08037 Barcelona")
Florist.create!(name: "LA FLORETA ", address: "Pg. de St. Joan, 190, Gràcia, 08037 Barcelona")
Florist.create!(name: "Floristeria La Prímula", address: "Carrer de Sardenya, 497, Gràcia, 08025 Barcelona")
Florist.create!(name: "Flores Navarro", address: "Carrer de València, 320, L'Eixample, 08009 Barcelona")
