class Band < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_one :user
end
