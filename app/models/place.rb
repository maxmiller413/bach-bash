class Place < ApplicationRecord

    has_many :place_collections
    has_many :collections, through: :place_collections


    #search by city
    def self.by_city(city) 
        self.all.select{|place| place.city == city}
    end 
 

end
