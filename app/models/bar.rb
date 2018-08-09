class Bar < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  has_many :gigs
  has_many :messages
  validates :user, presence: true
end
