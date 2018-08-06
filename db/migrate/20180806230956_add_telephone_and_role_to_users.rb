class AddTelephoneAndRoleToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :telephone, :string
    add_column :users, :role, :string
  end
end
