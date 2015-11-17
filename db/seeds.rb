# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Superhero.destroy_all

batman = Superhero.create!(name: 'Batman', photo_url: 'batman.jpeg')
superman = Superhero.create!(name: 'Superman', photo_url: 'superman.jpeg')
the_flash = Superhero.create!(name: 'The Flash', photo_url: 'The_Flash.jpeg')
