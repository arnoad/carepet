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
Review.destroy_all
User.destroy_all

puts 'Database cleaned !'

puts 'Create users...'

# Rick
file = URI.open("https://randomuser.me/api/portraits/men/8.jpg")
rick = User.create!(full_name: 'Rick Sanchez', address: "420 Queen Street, Brisbane", city:'Brisbane',bio: "Hey there, I am Rick Sanchez. Originally hailing from Perth, I made the move to Brisbane when I was just a sprightly 12-year-old. Since then, this vibrant city has become my home sweet home. You can find me living a peaceful life in a terraced house nestled on 420 Queen Street, along with my amazing partner and our mischievous Bengal cat, Tempo.", house_type: 'Terraced House', carer: true, age: 38, email: 'rick@test.com', password: '123456')
rick.photo.attach(io: file, filename: "rick.png", content_type: "image/png")
rick.save


# Ben
file = URI.open("https://randomuser.me/api/portraits/men/9.jpg")
ben = User.create!(full_name: 'Ben Smith', address: "275 George Street, Brisbane",city: 'Brisbane', bio: "Hey, I'm Ben Smith, your friendly neighborhood carpenter! I am a single guy who thrives on staying active and embracing social connections.u can usually find me out and about, diving headfirst into various water sports like surfing. ", house_type: 'Apartment', carer: true, age: 24, email: 'ben@test.com', password: '123456')
ben.photo.attach(io: file, filename: "ben.png", content_type: "image/png")
ben.save


# Stan
file = URI.open("https://randomuser.me/api/portraits/men/10.jpg")
stan = User.create!(full_name: 'Stan Wilson', address: "140 Creek Street, Brisbane",city: 'Brisbane', bio: "Hey, I'm Stan, and I am living the dream with my awesome boyfriend, Berny.We're the proud owners of this cozy little café down in town.Berny and I are all about travel, especially in Asia. ", house_type: 'Garden House', carer: true, age: 29, email: 'stan@test.com', password: '123456')
stan.photo.attach(io: file, filename: "stan.png", content_type: "image/png")
stan.save

# Aira
file = URI.open("https://randomuser.me/api/portraits/women/10.jpg")
aira = User.create!(full_name: 'Aira Novotny', address: "115, Barton Road, Brisbane",city: 'Brisbane', bio: "Hi, I am Aira. Nice to e-meet you! I am an environmental director. During the week I keep myself busy with work, yoga and other activities. However, during the weekend I like to relax with Len (my partner) and our little puppy Luna. ", house_type: 'Garden House', carer: true, age: 29, email: 'aira@test.com', password: '123456')
aira.photo.attach(io: file, filename: "aira.png", content_type: "image/png")
aira.save

# Sophie
file = URI.open("https://randomuser.me/api/portraits/women/28.jpg")
sophie = User.create!(full_name: 'Sophie Bernard', address: "943, Boundary Road, Brisbane",city: 'Brisbane', bio: "Bonjour! I am Sophie. Originally from France but living the Aussie life in Brisbane. I am studying psychology at Brisbane's University. I share my flat with another student. I am very social person who enjoys meeting new people ", house_type: 'Apartment', carer: true, age: 25, email: 'sophie@test.com', password: '123456')
sophie.photo.attach(io: file, filename: "sophie.png", content_type: "image/png")
sophie.save

# Beth Hatt
file = URI.open("https://randomuser.me/api/portraits/women/35.jpg")
beth = User.create!(full_name: 'Beth Hatt', address: "18, Castlereagh Street, Brisbane",city: 'Brisbane', bio: "Hello there, I am Beth. I am a single mom living with my 5 years old Tom. We love to be outdoors, so you will often find us in the parks or at the beach. Tom loves having pets at home to play with. Contact me for any questions!", house_type: 'Apartment', carer: true, age: 34, email: 'beth@test.com', password: '123456')
beth.photo.attach(io: file, filename: "beth.png", content_type: "image/png")
beth.save

# Rob Peterson
file = URI.open("https://randomuser.me/api/portraits/men/80.jpg")
rob = User.create!(full_name: 'Rob Peterson', address: "40, Mountjoy Terrace, Brisbane",city: 'Brisbane', bio: "Hi all, I am Rob. I moved to Brisbane for work 4 months ago. I work in Finance but I always wanted to be a vet as a kid. I have always loved animals and nature and would like to adopt a puppy once I am settled. For the moment, I am happy to take care of yours!", house_type: 'Apartment', carer: true, age: 34, email: 'rob@test.com', password: '123456')
rob.photo.attach(io: file, filename: "rob.png", content_type: "image/png")
rob.save


# Maria Gutierrez
file = URI.open("https://randomuser.me/api/portraits/women/54.jpg")
maria = User.create!(full_name: 'Maria Gutierrez', address: "182, Dewar Terrace, Brisbane",city: 'Brisbane', bio: "Hi all, I am Maria. Since I moved to Australia I have been trying to travel as much as my job allows. Therefore, I need someone to take care of my dog Loonie.", house_type: 'Apartment', carer: false, age: 40, email: 'maria@test.com', password: '123456')
maria.photo.attach(io: file, filename: "maria.png", content_type: "image/png")
maria.save

# ERIC
file = URI.open("https://randomuser.me/api/portraits/men/98.jpg")
eric = User.new(full_name: "Eric Cartman", address: "56 George Street, Sydney",city: "Sydney", bio: "Hey there! I'm Eric, a passionate animal lover and pet enthusiast. With years of experience in pet care, I'm thrilled to be part of this amazing pet sitting app. From dogs and cats to birds and reptiles, I've cared for a wide range of furry and feathery friends. As a responsible and attentive pet sitter, I understand the importance of providing love, companionship, and top-notch care for your beloved pets.", house_type: "Apartment", carer: true, age: 28, email: "eric@test.com," password: '123456')
eric.photo.attach(io: file, filename: "eric.png", content_type: "image/png")
eric.save

# KYLE
file = URI.open("https://randomuser.me/api/portraits/men/99.jpg")
kyle = User.new(full_name: "Kyle Brovloski", address: "73 Pitt Street, Sydney",city: "Sydney", bio: "Hey, I'm Kyle, an avid animal enthusiast with a deep love for all creatures great and small. Joining this fantastic pet sitting app, I bring my genuine passion and commitment to providing exceptional care for your furry companions. With a keen understanding of various pet needs and behaviors, I have a track record of creating a comfortable and engaging environment for pets of all kinds.", house_type: "Apartment", carer: true, age: 26, email: "kyle@test.com", password: '123456')
kyle.photo.attach(io: file, filename: "kyle.png", content_type: "image/png")
kyle.save

# MICHAEL
file = URI.open("https://randomuser.me/api/portraits/men/67.jpg")
michael = User.new(full_name: "Michael Schumacher", address: "42 Martin Place, Sydney",city: "Sydney", bio: "Hi there, I'm Michael, a devoted animal lover driven by a profound connection with our four-legged friends. As a member of this incredible pet sitting app, I bring my unwavering passion and dedication to delivering unparalleled care for your cherished pets.", house_type: "Terraced House", carer: true, age: 45, email: 'michael@test.com', password: '123456')
michael.photo.attach(io: file, filename: "michael.png", content_type: "image/png")
michael.save

# ELENA
file = URI.open("https://randomuser.me/api/portraits/women/67.jpg")
elena = User.new(full_name: "Elena Stanley", address: "100 George Street, Sydney",city: "Sydney", bio: "Hi there, I'm Elena, a devoted animal lover driven by a profound connection with our four-legged friends. As a member of this incredible pet sitting app, I bring my unwavering passion and dedication to delivering unparalleled care for your cherished pets.", house_type: "Terraced House", carer: true, age: 42, email: 'elena@test.com', password: '123456')
elena.photo.attach(io: file, filename: "elena.png", content_type: "image/png")
elena.save

# ELON
file = URI.open("https://randomuser.me/api/portraits/men/68.jpg")
elon = User.new(full_name: "Elon Mustard", address: "459 Pitt Street, Sydney",city: "Sydney", bio: "Hi there, I'm Elon, a devoted animal lover driven by a profound connection with our four-legged friends. As a member of this incredible pet sitting app, I bring my unwavering passion and dedication to delivering unparalleled care for your cherished pets.", house_type: "Terraced House", carer: true, age: 53, email: 'elon@test.com', password: '123456')
elon.photo.attach(io: file, filename: "elon.png", content_type: "image/png")
elon.save

puts 'Users created !'

# Rick's Pet

puts 'Create pets...'
file = URI.open("https://bengalcatworld.com/wp-content/uploads/2012/02/bengal-cats-and-kittens-028.jpg")
tempo = Pet.create!(name: 'Tempo', age: 3, pet_type: 'cat', breed: 'bengal', medical_cond: 'none', special_needs: 'none', user: rick)
tempo.photo.attach(io: file, filename: "tempo.png", content_type: "image/png")
tempo.save

# Ben's Pet

file = URI.open("https://images.dog.ceo/breeds/weimaraner/n02092339_514.jpg")
mrbean = Pet.create!(name: 'Mr Bean', age: 4, pet_type: 'dog', breed: 'weimaraner', medical_cond: 'none', special_needs: 'none', user: ben)
mrbean.photo.attach(io: file, filename: "mrbean.png", content_type: "image/png")
mrbean.save


# Sophie's Pet
file = URI.open("https://lafeber.com/mammals/wp-content/uploads/holland-lop-hooks-1024x683.jpg")
dingo = pet = Pet.create!(name: 'Dingo', age: 6, pet_type: 'bunny', breed: 'dwarf', medical_cond: 'none', special_needs: 'none', user: sophie)
dingo.photo.attach(io: file, filename: "mrbean.png", content_type: "image/png")
dingo.save

# Maria's Pet
file = URI.open("https://images.dog.ceo/breeds/sharpei/noel.jpg")
loonie = pet = Pet.create!(name: 'Loonie', age: 6, pet_type: 'dog', breed: 'sharpei', medical_cond: 'none', special_needs: 'none', user: maria)
loonie.photo.attach(io: file, filename: "mrbean.png", content_type: "image/png")
loonie.save

puts 'Pets created...'

puts 'Create requests...'

Request.create!(status: 'Pending', start_date: '2023-08-01', end_date: '2023-08-03', carers_home: true, carer: stan, pet: pet, price: 15)

puts "Create forum"
forum1 = Forum.create!(title: 'Concerned about my cat', category: 'Pet Care', description: 'my cat, Tempo, is not eating nor sleeping', user: rick)

puts 'Create Posts...'
Post.create!(content: 'it could be due to the stress. Have you changed houses recently?', forum: forum1, user: ben)


puts "Create Review..."

Review.create(content: "Stan was an amazing carer for Loonie. I would totally recommend him.", user: maria, carer: stan, rating: 5.0)
Review.create(content: "Thank you for the caretaking. Will definitely book Stan again!", user: elena, carer: stan, rating: 4.0)
Review.create(content: "Stan is super kind, my buddy was so happy.", user: eric, carer: stan, rating: 4.0)

puts 'SEEDS DONE !'
