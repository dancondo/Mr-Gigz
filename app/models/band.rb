class Band < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  has_many :applies
  has_many :gigs, through: :applies
  validates :user, presence: true
  has_many :my_tags
  has_many :tags, through: :my_tags
  accepts_nested_attributes_for :my_tags
end
