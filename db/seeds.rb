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
Post.destroy_all
Forum.destroy_all
User.destroy_all

puts 'Database cleaned !'

puts 'Create users...'

rick = User.create!(full_name: 'Rick Sanchez', address: "420 Queen Street, Brisbane", city:'Brisbane', bio: "I'm Rick Sanchez, the blue-haired genius from 'Rick and Morty.' With my portal gun and sharp intellect, I navigate dimensions, challenge norms, and question the fabric of existence. I may be chaotic and cynical, but deep down, I care about my family... in my own twisted way.", house_type: 'with garden', carer: true, age: 63, email: 'rick@test.com', password: '123456')
morty = User.create!(full_name: 'Morty Smith', address: "275 George Street, Brisbane",city: 'Brisbane', bio: "I'm Morty Smith, the timid yet loyal companion of Rick in 'Rick and Morty.' Navigating bizarre dimensions and facing existential dilemmas alongside Rick, I often find myself out of my comfort zone. Despite my insecurities, I strive to balance adventure with moral compass, growing both intellectually and emotionally.", house_type: 'flat with balcony', carer: true, age: 18, email: 'morty@test.com', password: '123456')
stan = User.create!(full_name: 'Stan Marsh', address: "140 Creek Street, Brisbane",city: 'Brisbane', bio: "I'm Stan Marsh, one of the main characters in 'South Park.' Navigating the absurdities of our town with my friends, I often find myself in hilarious and outrageous situations. As a voice of reason and compassion, I tackle social issues and learn valuable life lessons, all while embracing the quirks and humor of our unique community.", house_type: 'villa', carer: true, age: 20, email: 'stan@test.com', password: '123456')


puts 'Users created !'

puts 'Create pets...'

Pet.create!(name: 'Tempo', age: 3, pet_type: 'cat', breed: 'bengal', medical_cond: 'none', special_needs: 'none', user: rick)
Pet.create!(name: 'Mr Bean', age: 4, pet_type: 'dog', breed: 'labrador', medical_cond: 'none', special_needs: 'none', user: morty)
pet = Pet.create!(name: 'Dingo', age: 6, pet_type: 'bunny', breed: 'dwarf', medical_cond: 'none', special_needs: 'none', user: stan)
Pet.create!(name: 'Remy', age: 2, pet_type: 'rat', breed: 'brown rat', medical_cond: 'none', special_needs: 'good cuisine', user: stan)

puts 'Pets created...'

puts 'Create requests...'

Request.create!(status: 'Pending', start_date: '2023-08-01', end_date: '2023-08-03', carers_home: true, carer: stan, pet: pet, price: 15)

puts "Create forum"
forum1 = Forum.create!(title: 'Concerned about my cat', category: 'Pet Care', description: 'my cat, Tempo, is not eating nor sleeping', user: rick)

puts 'Create Posts...'
Post.create!(content: 'it could be due to the stress. Buy him a comfort pillow', forum: forum1, user: morty)

puts 'SEEDS DONE !'
