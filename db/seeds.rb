PlaceCollection.destroy_all
Collection.destroy_all
Place.destroy_all
Party.destroy_all
User.destroy_all 

User.create(username: "max", password: "abc", first_name: "max", last_name: "miller", email: "max@example.com")
Place.create(name: "my name is place", address: "im an address", city: "im a city", state: "IL")
Party.create(name: "Max's bach")
Collection.create(name: "weekend", user_id: 1, party_id: 1)
PlaceCollection.create(collection_id: 1, place_id: 1, name: "one day")

puts "-------seeded---------"