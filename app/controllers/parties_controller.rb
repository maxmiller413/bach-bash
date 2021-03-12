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

    def show 
    end 

    def edit 
        @parties = @current_user.parties
        @party = Party.find_by(params[:id])
     end 

     def update 
        party = Party.find_by(params[:id])
        party.update(party_params)
        redirect_to user_profile_path(@current_user)
     end 

    private
    def party_params
        params.require(:party).permit(:name)
    end


end
