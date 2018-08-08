class Band < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  has_many :applies
  has_many :gigs, through: :applies
  validates :user, presence: true
end
