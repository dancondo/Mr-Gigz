class AddUserToBars < ActiveRecord::Migration[5.2]
  def change
    add_reference :bars, :user, foreign_key: true
  end
end
