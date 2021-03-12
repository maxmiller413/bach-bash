class User < ApplicationRecord

    has_secure_password

    has_many :collections
    has_many :parties, through: :collections

    def name 
        "#{first_name} #{last_name}"
    end 

    
    def find_by_thursday
        pc_array = collections.map(&:place_collections)

        day = pc_array.select do |index, pc|
            pc.name == "Thursday"
        end 

        place = day.map do |index, pc|
            pc.place.name
        end 
        
        #get all place user_place.collections
        #iterate thru and select every place_collections named thursday
        #map the name 

        


    end 

end
