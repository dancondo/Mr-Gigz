class AddTitleToGigs < ActiveRecord::Migration[5.2]
  def change
    add_column :gigs, :title, :string, default: 'Gig'
  end
end
