class AddBandToGigs < ActiveRecord::Migration[5.2]
  def change
    add_reference :gigs, :band, foreign_key: true, default: nil
  end
end
