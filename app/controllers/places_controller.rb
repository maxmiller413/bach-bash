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
       @places = Place.by_city(params[:city])
       @city_name = params[:city]
    end 

    def show 
        @place = Place.find(params[:id])
        # @place_collections = @current_user.place_collections
        # @place_collections = @current_user.place_collections
        @place_collection = PlaceCollection.new
        @collections = @current_user.collections 

    end 

    def create
        @place = Place.find(params[:id])
        # PlaceCollection.create(params[:collection_id], params[:name])
        
        #id = params[:collection_id]
        PlaceCollection.create(name: params[:name], place_id: @place.id, collection_id: params[:collection][:collection_id])
        redirect_to place_path(@place)
        
    end 

    def add_place
        
        @place = Place.find(params[:id])
        @current_user.thursday << @place
        
    end

    # private 

    # def params 
    #     params.require(:place).permit(:city)
    # end 

end
