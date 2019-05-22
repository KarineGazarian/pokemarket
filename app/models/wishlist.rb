class Wishlist < ApplicationRecord
  belongs_to :user
  belongs_to :pokemon
<<<<<<< HEAD
=======

  validates :pokemon, uniqueness: true
>>>>>>> c87f1168db25adc45445fd850ead8d0993ef3e8b
end
