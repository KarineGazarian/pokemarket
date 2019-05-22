class Wishlist < ApplicationRecord
  belongs_to :user
  belongs_to :pokemon

  validates :pokemon, uniqueness: true
end
