class Place < ApplicationRecord

    has_many :place_collections
    has_many :collections, through: :place_collections


    #search by city
    def self.by_city(city) 
        self.all.select{|place| place.city == city}
    end 

    #add
    def self.find_name(name)
        find_by(name: name)
    end
 

end
