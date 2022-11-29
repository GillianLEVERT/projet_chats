# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

Item.destroy_all

20.times do |i|
    Item.create!(
      title: "Chaton n°#{i+1}",
      description: Faker::Lorem.paragraph(sentence_count: 4),
      price: rand(10..500),
      image_url: "img"+(i+1).to_s+".jpg",
    )
end