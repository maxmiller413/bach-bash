class PartiesController < ApplicationController

    def new
        @party = Party.new
    end 

#multiple parties
    def index
        @parties = Party.all
    end 

    def create
        party = Party.create(party_params)

        collection = Collection.create(user_id: current_user.id, party_id: party.id, name: party.name)

        redirect_to user_profile_path(@current_user)
    end 

    private
    def party_params
        params.require(:party).permit(:name)
    end

end
