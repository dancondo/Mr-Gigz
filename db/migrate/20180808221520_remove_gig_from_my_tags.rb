class RemoveGigFromMyTags < ActiveRecord::Migration[5.2]
  def change
    remove_reference :my_tags, :gig, foreign_key: true
  end
end
