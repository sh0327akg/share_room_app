class Room < ApplicationRecord
  belongs_to :user
  has_many :reservations

  validates :room_name,   presence: true
  validates :description, presence: true
  validates :price,       presence: true
  validates :address,     presence: true
  validates :room_image,  presence: true

  mount_uploader :room_image, ImageUploader
end
