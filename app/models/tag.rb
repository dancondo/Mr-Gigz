class Tag < ApplicationRecord
  has_many :my_tags
  has_many :gig_tags
  has_many :bands, through: :my_tags
  has_many :gigs, through: :gig_tags
end
