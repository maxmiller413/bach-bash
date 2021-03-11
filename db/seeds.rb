

PlaceCollection.destroy_all
Collection.destroy_all
Place.destroy_all
Party.destroy_all
User.destroy_all 

User.create(username: "max", password: "abc", first_name: "max", last_name: "miller", email: "max@example.com")
Party.create(name: "Max's bach")
Collection.create(name: "weekend", user_id: 1, party_id: 1)
PlaceCollection.create(collection_id: 1, place_id: 1, name: "one day")


cities = ["Chicago", "New Orleans", "Dallas", "Las Vegas", "Charleston", "Nashville"]

client = Yelp::Fusion::Client.new(ENV["API_KEY"])
yelp_params = {
    term: 'bars',
    limit: 3
  }
 cities.each do |city|
    response = client.search(city, yelp_params)
    # name = response.businesses[0].name

    response.businesses.each do |business|
        name = business.name
        state = business.location.state
        address = business.location.address1
        img_url = business.image_url
        url = business.url
        rating = business.rating
        zip_code = business.location.zip_code

        Place.create(name: name, address: address, city: city, state: state)
    end 

    
    
 end 

# def self.search 
#     url = "https://api.yelp.com/v3/businesses/search"
    
#     yelp_params = {
#     term: 'bars',
#     limit: 1
#   }

#     response = HTTP.auth("Bearer #{ENV["API_KEY"]}").get(url, yelp_params)
#     response.parse 
#     byebug
# end




puts "-------seeded---------"