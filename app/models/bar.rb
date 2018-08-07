class Bar < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  validates :user, presence: true
end
