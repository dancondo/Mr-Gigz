class AddGigToMessages < ActiveRecord::Migration[5.2]
  def change
    add_reference :messages, :gig, foreign_key: true
  end
end
