class Band < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  has_many :applies, dependent: :destroy
  has_many :gigs
  validates :user, presence: true
  validates :name, presence: true
  has_many :my_tags, dependent: :destroy
  has_many :tags, through: :my_tags
  has_many :messages
  accepts_nested_attributes_for :my_tags
end
