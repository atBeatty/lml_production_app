Crew.create(rating: 3)
Crew.create(rating: 2)
Crew.create(rating: 4)
Crew.create(rating: 5)

CrewMember.create(name: "Adam", email: "Adam@Adam.com", role: "photographer", rate: 74, crew_id: 1)
CrewMember.create(name: "Lance", email: "Lance@Lance.com", role: "ppe specialist", rate: 63, crew_id: 1)
CrewMember.create(name: "Sarah", email: "Sarah@Sarah.com", role: "video tech", rate: 13, crew_id: 1)

CrewMember.create(name: "Ariana", email: "Ariana@Ariana.com", role: "photographer", rate: 74, crew_id: 2)
CrewMember.create(name: "Mary", email: "Mary@Mary.com", role: "ppe specialist", rate: 63, crew_id: 2)
CrewMember.create(name: "Joe", email: "Joe@Joe.com", role: "video tech", rate: 23, crew_id: 2)

CrewMember.create(name: "Ariana", email: "Ariana@Ariana.com", role: "digi-tech", rate: 74, crew_id: 3)
CrewMember.create(name: "Mary", email: "Mary@Mary.com", role: "ppe specialist", rate: 63, crew_id: 3)
CrewMember.create(name: "Joe", email: "Joe@Joe.com", role: "stylist", rate: 23, crew_id: 3)

# Client.create(name: "Under Armour")
# Client.create(name: "Nike")

# Producer.create(name: "Miss Lynch", email: "lindsey@gmail.com")
# Producer.create(name: "Ariana", email: "ariana@gmail.com")

Production.create(name: "Under Armour Shoot", client: "Nike", crew_id: 1)
Production.create(name: "Nike Shoot", client: "Nike", crew_id: 2)
Production.create(name: "Nike Marathon Race", client: "Adidas", crew_id: 3)