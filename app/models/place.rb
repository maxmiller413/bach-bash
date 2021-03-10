class Place < ApplicationRecord

    has_many :place_collections
    has_many :collections, through: :place_collections

# API_HOST = "https://api.yelp.com"
# SEARCH_PATH = "/v3/businesses/search"
# BUSINESS_PATH = "/v3/businesses/" 
# DEFAULT_TERM = "dinner"
# DEFAULT_LOCATION = "San Francisco, CA"
# SEARCH_LIMIT = 5



#     ##method goes here
#     def self.search(term, location)
#         url = "#{API_HOST}#{SEARCH_PATH}"
#         params = {
#         term: term,
#         location: location,
#         limit: SEARCH_LIMIT
#         }
    
#         response = HTTP.auth("Bearer #{ENV["API_KEY"]}").get(url, params: params)
#         response.parse
#     end
 

end
