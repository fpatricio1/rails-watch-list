# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Movie.destroy_all
puts 'Creating 4 fake movies...'

  4.times do
    Movie.create(
      title:Faker::Book.title,
      overview:Faker::Restaurant.review,
      poster_url:Faker::LoremPixel.image(size: "50x60"),
      rating:Faker::Number.number
    )
  end
  puts 'Done!'
