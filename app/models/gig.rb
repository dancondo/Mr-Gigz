class Gig < ApplicationRecord
  belongs_to :bar
  has_many :applies
  has_many :bands, through: :applies
  has_many :gig_tags, dependent: :destroy
  has_many :tags, through: :gig_tags
  accepts_nested_attributes_for :gig_tags
end
