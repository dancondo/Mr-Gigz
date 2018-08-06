class CreateBands < ActiveRecord::Migration[5.2]
  def change
    create_table :bands do |t|
      t.string :name
      t.text :description
      t.string :photo
      t.integer :minimum_price

      t.timestamps
    end
  end
end
