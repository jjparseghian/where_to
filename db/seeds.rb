# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
	User.create(username: Faker::Name.name, email: Faker::Internet.email, password: '1234', )
	Post.create(title: Faker::Address.city, location: Faker::Address.country, description: Faker::Lorem.paragraph)
end