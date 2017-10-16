# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




10.times do 
  User.create(name: Faker::Name.name_with_middle, email: Faker::Internet.safe_email)
end

20.times do 
  Post.create(title: "#{Faker::Dessert.flavor} #{Faker::Dessert.topping}", description: Faker::Lorem.paragraph(2), user_id: [1, 2, 3, 4, 5, 6, 7, 8, 9, 0].sample)
end