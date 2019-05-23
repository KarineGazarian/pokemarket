class Pokemon < ApplicationRecord
  belongs_to :user
  has_many :wishlists
  has_many :transactions

  validates :name, :price, presence: true
  validates :category, presence: true, inclusion: { in: %w(normal fire water grass electric ice fighting poison ground flying psychic bug rock ghost dark dragon steel fairy),
     message: "%{value} is not a valid category"
  }

  mount_uploader :photo, PhotoUploader
end
