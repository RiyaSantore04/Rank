# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create(
	first_name: "namrata",
	last_name: "gupta",
	rank: "1"
)
20.times do |i|
	puts "creating users #{i+1}"
	User.create(
			first_name: "User#{i+1}",
			last_name: "Lname#{i+1}",
			rank: "User#{i+1}"
		)
end