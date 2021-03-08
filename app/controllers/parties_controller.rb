class PartiesController < ApplicationController

    def new
        @party = Party.new
    end 

#multiple parties
    def index
        @parties = Party.all
    end 

    def create
        @party = Party.create(party_params)
        redirect_to collections_path
    end 

    private
    def party_params
        params.require(:party).permit(:name)
    end

end
