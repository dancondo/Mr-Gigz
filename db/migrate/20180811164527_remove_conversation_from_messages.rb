class RemoveConversationFromMessages < ActiveRecord::Migration[5.2]
  def change
    remove_reference :messages, :conversation, foreign_key: true
  end
end
