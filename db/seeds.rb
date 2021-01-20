require 'faker'
Crew.create(rating: 3, comments: Faker::Lorem.paragraph(sentence_count: 2))
Crew.create(rating: 2, comments: Faker::Lorem.paragraph(sentence_count: 2))
Crew.create(rating: 4, comments: Faker::Lorem.paragraph(sentence_count: 2))


CrewMember.create(name: Faker::Name.name, email: Faker::Internet.email, employer: Faker::Company.name, role: "photographer", rate: 74, crew_id: 1)
CrewMember.create(name: Faker::Name.name, email: Faker::Internet.email, employer: Faker::Company.name, role: "ppe specialist", rate: 63, crew_id: 1)
CrewMember.create(name: Faker::Name.name, email: Faker::Internet.email, employer: Faker::Company.name, role: "video tech", rate: 13, crew_id: 1)

CrewMember.create(name: Faker::Name.name, email: Faker::Internet.email, employer: Faker::Company.name, role: "photographer", rate: 74, crew_id: 2)
CrewMember.create(name: Faker::Name.name, email: Faker::Internet.email, employer: Faker::Company.name, role: "ppe specialist", rate: 63, crew_id: 2)
CrewMember.create(name: Faker::Name.name, email: Faker::Internet.email, employer: Faker::Company.name, role: "video tech", rate: 23, crew_id: 2)

CrewMember.create(name: Faker::Name.name, email: Faker::Internet.email, employer: Faker::Company.name, role: "digi-tech", rate: 74, crew_id: 3)
CrewMember.create(name: Faker::Name.name, email: Faker::Internet.email, employer: Faker::Company.name, role: "ppe specialist", rate: 63, crew_id: 3)
CrewMember.create(name: Faker::Name.name, email: Faker::Internet.email, employer: Faker::Company.name, role: "stylist", rate: 23, crew_id: 3)


Production.create(name: Faker::Mountain.name, client: Faker::Company.name, crew_id: 1)
Production.create(name: Faker::Mountain.name, client: Faker::Company.name, crew_id: 2)
Production.create(name: Faker::Mountain.name, client: Faker::Company.name, crew_id: 3)

