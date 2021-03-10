class PlaceCollectionsController < ApplicationController
    def index 
        
    end 

    def new
        @place = Place.new
    end 

    def create
        Place.create(place_params)
        # redirect_to user_profile_path
    end 

    private
    def place_params
        # params.require(:collection).permit(:name)
    end

end
