class Gig < ApplicationRecord
  belongs_to :bar
  has_many :applies
end
