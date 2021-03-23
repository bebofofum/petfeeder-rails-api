# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

pet1 = Pet.find_or_create_by(name: "Zul", species: "Bearded Dragon")
pet2 = Pet.find_or_create_by(name: "Kita", species: "Gecko")
pet3 = Pet.find_or_create_by(name: "Goblin", species: "Cat")

owner1 = Owner.find_or_create_by(name: "Beep")
owner2 = Owner.find_or_create_by(name: "Bop")

feeding1 = Feeding.find_or_create_by(description: "worms", category: "evening", completed: true, pet_id: 2, owner_id: 1)