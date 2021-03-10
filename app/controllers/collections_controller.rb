class CollectionsController < ApplicationController

    # def index 
    #     @collections = Collection.all
    # end 

    # def show 
    #     @collection = Collection.find(params[:id])
    # end 

    def new
        @collection = Collection.new
        @parties = @current_user.parties
    end 

    def edit
        @collection = Collection.find_by(user_id: current_user.id)
        @parties = @current_user.parties
    end 

    def update
        @collection = Collection.find_by(user_id: current_user.id)
        @collection.update(name: params[:name])
        redirect_to user_profile_path(@current_user)
    end 

    # def create
        
    #     (name: params[:name], party_id: params[:party_id], user_id: @current_user.id)

    #     redirect_to user_profile_path(@current_user)
    # end 

    # private
    # def collection_params
    #     params.require(:collection).permit(:name, :party_id, :user_id)
    # end

end
