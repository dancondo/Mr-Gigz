class ChangeDateToStartDateFromGigs < ActiveRecord::Migration[5.2]
  def change
    rename_column :gigs, :date, :start_date
  end
end
