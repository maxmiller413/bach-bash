class UsersController < ApplicationController
    
    skip_before_action :authorized, only: [:create]

    def index 
        @users = User.all
    end 

    def show 
       @parties = @current_user.parties
       @collections = @current_user.collections
       @places = Place.all
    end 

    def create
        new_user = User.create(user_params)
        session[:user_id] = new_user.id
        redirect_to new_party_path
    end 


    def delete
        @current_user.collections.map  do |collection| 
            collection.place_collections.destroy_all 
        end
        redirect_to user_profile_path(@current_user)
    end 


    private

    def user_params
      params.require(:user).permit(:username, :password, :first_name, :last_name, :email)
    end 
end
