class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.references :bar, foreign_key: true
      t.references :band, foreign_key: true
      t.string :sender
      t.text :content

      t.timestamps
    end
  end
end
