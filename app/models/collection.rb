class Collection < ApplicationRecord

  belongs_to :user
  belongs_to :party

  has_many :place_collections
  has_many :places, through: :place_collections

end
