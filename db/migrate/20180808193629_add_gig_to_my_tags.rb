class AddGigToMyTags < ActiveRecord::Migration[5.2]
  def change
    add_reference :my_tags, :gig, foreign_key: true
  end
end
