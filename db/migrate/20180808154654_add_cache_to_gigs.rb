class AddCacheToGigs < ActiveRecord::Migration[5.2]
  def change
    add_column :gigs, :cache, :integer
  end
end
