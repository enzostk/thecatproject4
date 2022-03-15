# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all

5.times do |i| product = Product.create!(
  title: "Petit chat#{i+1}",
  description: "Petit con de chat",
  price: 12,
  image_url: "cat#{i+1}.png"
);
end