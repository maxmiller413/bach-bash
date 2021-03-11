require "json" 
class PlacesController < ApplicationController
    ##call api method
    ##render on the view page

    def index 
        @response = flash[response]
        
    end 

    def search_form
        @cities = ["Chicago", "New Orleans", "Dallas", "Las Vegas", "Charleston", "Nashville"]

    end 

    def search_results 
        byebug
       @places = Place.by_city(params)
       @city_name = params[:city]
    end 

    def show 
        
    end 

    private 

    def params 
        params.require(:place).permit(:city)
    end 

end
