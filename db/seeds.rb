# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Restaurant.destroy_all

dozo = { name: 'Dozo', address: 'Gambetta', phone_number: "0749204711", category: "chinese" }
tripletta = { name: 'Tripletta', address: 'Chartrons', phone_number: "0776204711", category: "chinese" }
caramel = { name: 'Caramel', address: 'Saint Catherine', phone_number: "0749764711", category: "french" }
zepherine = { name: 'Zepherine', address: 'Chartrons', phone_number: "0749321111", category: "chinese" }
osteria = { name: 'Osteria', address: 'Gambetta', phone_number: "0749984411", category: "italian" }


[dozo, tripletta, caramel, zepherine, osteria].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

review1 = { content: 'Great', rating: 5 }
review2 = { content: 'Bad', rating: 1 }

[review1, review2].each do |attributes|
  review = Review.create!(attributes)
  puts 'Created review'
end
