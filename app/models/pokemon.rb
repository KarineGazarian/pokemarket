class Pokemon < ApplicationRecord
  belongs_to :user
  has_many :wishlists

  validates :name, :price, presence: true

  mount_uploader :photo, PhotoUploader
end
