class PlacesController < ApplicationController
    ##call api method
    ##render on the view page

    def index 
        @response = flash[response]
        byebug
        
    end 

    def search_form
    end 

    def search 
        client = Yelp::Fusion::Client.new(ENV["API_KEY"])
        flash[response] = client.search(params[:city], term: 'bars', limit: 3)
        redirect_to places_path
    end 

    def show 
        
    end 

end
