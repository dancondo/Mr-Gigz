class CreateApplies < ActiveRecord::Migration[5.2]
  def change
    create_table :applies do |t|
      t.references :band, foreign_key: true
      t.references :gig, foreign_key: true

      t.timestamps
    end
  end
end
