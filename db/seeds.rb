# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Item.destroy_all

def random_size
    sizes = ["S", "M", "L","XL"]
    sizes.sample
end
5.times do 
    Item.create(name: "#{Faker::GreekPhilosophers.name} Shirt", 
    price: "#{Faker::Number.decimal(l_digits: 2)}",
    brand: "#{Faker::FunnyName.name}", 
    img_url: "#{Faker::LoremFlickr.image(search_terms: ['painting','philosopher'])}",
    color: "#{Faker::Color.color_name}",
    size: random_size)
end


5.times do 
    Item.create(name: "#{Faker::GreekPhilosophers.name} Pants", 
    price: "#{Faker::Number.decimal(l_digits: 2)}",
    brand: "#{Faker::FunnyName.name}", 
    img_url: "#{Faker::LoremFlickr.image(search_terms: ['painting','philosopher'])}",
    color: "#{Faker::Color.color_name}",
    size: random_size)
end






