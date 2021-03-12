class User < ApplicationRecord

    has_secure_password

    has_many :collections
    has_many :parties, through: :collections

    def name 
        "#{first_name} #{last_name}"
    end 

    
    def find_by_day(input_day)
        pc_array = collections.map(&:place_collections)

        day = pc_array[0].select do |pc|
            pc.name == input_day
        end 

        place = day.map do |p|
            p.place.name
        end 
    end 
        
        
        #get all place user_place.collections
        #iterate thru and select every place_collections named thursday
        #map the name 



end