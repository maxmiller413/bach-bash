class User < ApplicationRecord

    has_secure_password

    has_many :collections
    has_many :parties, through: :collections

    def name 
        "#{first_name} #{last_name}"
    end 

    def place_collections
        collections.map do |collection|
            collection.place_collections.map do |place_collection|
                place_collection.name
            end 
        end 
    end 

    def find_by_day(day)
        #get all place user_place.collections
        #iterate thru and select every place_collections named thursday
        #map the name 
        self.collections.each do |collection|
            collection.place_collections.select do |pc|     pc.name == day
            end    
        end 
    end 

end
