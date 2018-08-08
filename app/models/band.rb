class Band < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  has_many :applies, dependent: :destroy
  has_many :gigs, through: :applies
  validates :user, presence: true
  has_many :my_tags, dependent: :destroy
  has_many :tags, through: :my_tags
  accepts_nested_attributes_for :my_tags
end
