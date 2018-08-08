class Tag < ApplicationRecord
  has_many :my_tags
  has_many :bands, through: :my_tags
end
