# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


# SEED
# Users
puts 'STARTING SEEDS'

puts 'Cleaning database...'

Request.destroy_all
Pet.destroy_all
User.destroy_all

puts 'Database cleaned !'

puts 'Create users...'

josh = User.create!(full_name: 'Josh Trey', address: '33 Stendrich 4837 Membach', city:'Membach', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occae.', house_type: 'with garden', carer: false, age: 28, email: 'josh@test.com', password: '123456')
emma = User.create!(full_name: 'Emma Wendy', address: '55 Stendrich 4700 Eupen',city: 'Eupen', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occae.', house_type: 'flat with balcony', carer: true, age: 31, email: 'emma@test.com', password: '123456')
steve = User.create!(full_name: 'Steve Smith', address: '192 Neutralstrasse 4710 Lontzen',city: 'Lontzen', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occae.', house_type: 'villa', carer: true, age: 28, email: 'steve@test.com', password: '123456')

puts 'Users created !'

puts 'Create pets...'

Pet.create!(name: 'Tempo', age: 3, pet_type: 'cat', breed: 'bengal', medical_cond: 'none', special_needs: 'none', user: josh)
Pet.create!(name: 'Mr Bean', age: 4, pet_type: 'dog', breed: 'labrador', medical_cond: 'none', special_needs: 'none', user: emma)
pet = Pet.create!(name: 'cartman', age: 6, pet_type: 'bunny', breed: 'dwarf', medical_cond: 'none', special_needs: 'none', user: steve)
Pet.create!(name: 'remy', age: 2, pet_type: 'rat', breed: 'brown rat', medical_cond: 'none', special_needs: 'good cuisine', user: steve)

puts 'Pets created...'

puts 'Create requests...'

Request.create!(status: 'pending', start_date: '2023-08-01', end_date: '2023-08-03', carers_home: true, carer: steve, pet: pet, price: 15)

puts 'Pets created...'

puts 'SEEDS DONE !'
