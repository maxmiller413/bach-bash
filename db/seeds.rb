

PlaceCollection.destroy_all
Collection.destroy_all
Place.destroy_all
Party.destroy_all
User.destroy_all 

User.create(username: "max", password: "abc", first_name: "max", last_name: "miller", email: "max@example.com")
Party.create(name: "Max's bach")
Collection.create(name: "weekend", user_id: 1, party_id: 1)
PlaceCollection.create(collection_id: 1, place_id: 1, name: "one day")
PlaceCollection.create(collection_id: 1, place_id: 2, name: "one day")
PlaceCollection.create(collection_id: 1, place_id: 3, name: "one day")


##### these are the cities we are searching by

cities = ["Chicago", "New Orleans", "Dallas", "Las Vegas", "Charleston", "Nashville"]

##### this is the Yelp Fusion gem going to work
client = Yelp::Fusion::Client.new(ENV["API_KEY"])
yelp_params = {
    term: 'bars',
    limit: 100
  }

  ###### ^above the terms for the request: 100 bars for each city

  ##### loop through the array of cities and make a request for each city in the array
 cities.each do |city|
    response = client.search(city, yelp_params)
   

    ##### traverse through the data to grab attributes to create an instance of a new place for every business returned from the request
    response.businesses.each do |business|
        name = business.name
        state = business.location.state
        address = business.location.address1
        img_url = business.image_url
        url = business.url
        rating = business.rating
        zip_code = business.location.zip_code

        Place.create(name: name, address: address, city: city, state: state, zip_code: zip_code, rating: rating, url: url, img_url: img_url)
    end 

    
    
 end 






puts "-------seeded---------"