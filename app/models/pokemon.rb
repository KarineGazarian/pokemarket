class Pokemon < ApplicationRecord
  belongs_to :user

  validates :name, :price, presence: true
end
