# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.destroy_all
Profile.destroy_all
Product.destroy_all
User.destroy_all

cat_array = ["Photography", "Musical Instruments", "Sculpting", "Woodwork", "Cooking", "Sewing", "Gardening"]

cat_array.each do |c|
  category = Category.new(name: c)
  category.save!
end

categories = Category.all

10.times do
	u = User.create(email: Faker::Internet.email, password: "secret")
	p = Profile.create(name:Faker::Name.name, description: "Hello", location: 'Amsterdam, NL')
	u.profile = p
end

profiles = Profile.all

30.times do
	product = Product.create(
	  name: Faker::Pokemon.name,
	  description: "This is a lovely thing.",
	  photo: Faker::Placeholdit.image("50x50"),
	  category: categories.sample,
	  price: rand(1..100),
	  profile: profiles.sample
	)
end