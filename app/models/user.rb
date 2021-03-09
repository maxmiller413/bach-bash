class User < ApplicationRecord

    has_secure_password

    has_many :collections
    has_many :parties, through: :collections

    def name 
        "#{first_name} #{last_name}"
    end 

end
