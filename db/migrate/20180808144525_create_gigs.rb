class CreateGigs < ActiveRecord::Migration[5.2]
  def change
    create_table :gigs do |t|
      t.datetime :date
      t.text :description
      t.references :bar, foreign_key: true

      t.timestamps
    end
  end
end
