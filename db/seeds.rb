PlaceCollection.destroy_all
Collection.destroy_all
Place.destroy_all
Party.destroy_all
User.destroy_all 

User.create(username: "max", password: "abc", first_name: "max", last_name: "miller", email: "max@example.com")
Place.create(name: "Place1", address: "111 party lane", city: "Chicago", state: "IL")
Place.create(name: "Place2", address: "222 party lane", city: "Chicago", state: "IL")
Place.create(name: "Place3", address: "333 party lane", city: "chicago", state: "IL")
Party.create(name: "Max's bach")
Collection.create(name: "weekend", user_id: 1, party_id: 1)
PlaceCollection.create(collection_id: 1, place_id: 1, name: "one day")



puts "-------seeded---------"