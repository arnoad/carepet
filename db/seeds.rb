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

josh = User.create!(full_name: 'Josh', address: '33 Stendrich 4837 Membach', bio: 'this is my bio', house_type: 'with garden', carer?: false, age: 28, email: 'josh@test.com', password: '123456')
emma = User.create!(full_name: 'Emma', address: '55 Stendrich 4700 Eupen', bio: 'this is a beautiful bio', house_type: 'flat with balcony', carer?: true, age: 31, email: 'emma@test.com', password: '123456')
steve = User.create!(full_name: 'Steve', address: '192 Neutralstrasse 4710 Lontzen', bio: 'this is a rich bio', house_type: 'villa', carer?: true, age: 28, email: 'steve@test.com', password: '123456')

puts 'Users created !'

puts 'Create pets...'

Pet.create!(name: 'Tempo', age: 3, pet_type: 'cat', breed: 'bengal', medical_cond: 'none', special_needs: 'none', user: josh)
Pet.create!(name: 'Mr Bean', age: 4, pet_type: 'dog', breed: 'labrador', medical_cond: 'none', special_needs: 'none', user: emma)
Pet.create!(name: 'cartman', age: 6, pet_type: 'bunny', breed: 'dwarf', medical_cond: 'none', special_needs: 'none', user: steve)
Pet.create!(name: 'remy', age: 2, pet_type: 'rat', breed: 'brown rat', medical_cond: 'none', special_needs: 'good cuisine', user: steve)

puts 'Pets created...'

puts 'SEEDS DONE !'
