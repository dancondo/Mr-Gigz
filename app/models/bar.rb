class Bar < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  has_many :gigs
  validates :user, presence: true
end
