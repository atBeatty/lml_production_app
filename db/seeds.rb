require 'faker'
Crew.create(rating: 3)
Crew.create(rating: 2)
Crew.create(rating: 4)
Crew.create(rating: 5)

CrewMember.create(name: Faker::Name.name, email: Faker::Internet.email, employer: Faker::Company.name, role: "photographer", rate: 74, crew_id: 1)
CrewMember.create(name: Faker::Name.name, email: Faker::Internet.email, employer: Faker::Company.name, role: "ppe specialist", rate: 63, crew_id: 1)
CrewMember.create(name: Faker::Name.name, email: Faker::Internet.email, employer: Faker::Company.name, role: "video tech", rate: 13, crew_id: 1)

CrewMember.create(name: Faker::Name.name, email: Faker::Internet.email, employer: Faker::Company.name, role: "photographer", rate: 74, crew_id: 2)
CrewMember.create(name: Faker::Name.name, email: Faker::Internet.email, employer: Faker::Company.name, role: "ppe specialist", rate: 63, crew_id: 2)
CrewMember.create(name: Faker::Name.name, email: Faker::Internet.email, employer: Faker::Company.name, role: "video tech", rate: 23, crew_id: 2)

CrewMember.create(name: Faker::Name.name, email: Faker::Internet.email, employer: Faker::Company.name, role: "digi-tech", rate: 74, crew_id: 3)
CrewMember.create(name: Faker::Name.name, email: Faker::Internet.email, employer: Faker::Company.name, role: "ppe specialist", rate: 63, crew_id: 3)
CrewMember.create(name: Faker::Name.name, email: Faker::Internet.email, employer: Faker::Company.name, role: "stylist", rate: 23, crew_id: 3)

# Client.create(name: "Under Armour")
# Client.create(name: "Nike")

# Producer.create(name: "Miss Lynch", email: Faker::Internet.email)
# Producer.create(name: "Ariana", email: Faker::Internet.email)


20.times do 
    Production.create!(name: Faker::Mountain.name, client: Faker::Company.name, crew_id: rand(3)+1)
end
# Production.create(name: "Under Armour Shoot", client: "Nike", crew_id: 1)
# Production.create(name: "Nike Shoot", client: "Nike", crew_id: 2)
# Production.create(name: "Nike Marathon Race", client: "Adidas", crew_id: 3)