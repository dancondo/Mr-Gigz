class Band < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  validates :user, presence: true
  has_many :mytag
end
