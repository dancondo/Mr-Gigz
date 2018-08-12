class Bar < ApplicationRecord
  #uploaders
  mount_uploader :photo, PhotoUploader

  #relations
  belongs_to :user
  has_many :gigs
  has_many :messages

  #validations
  validates :user, presence: true
  validates :address, presence: true

  #geocoding
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
