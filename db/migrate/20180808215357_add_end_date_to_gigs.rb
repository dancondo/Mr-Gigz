class AddEndDateToGigs < ActiveRecord::Migration[5.2]
  def change
    add_column :gigs, :end_date, :datetime
  end
end
