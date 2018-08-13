class Message < ApplicationRecord
  belongs_to :bar
  belongs_to :band
  # belongs_to :conversation
  validates :content, presence: true, allow_blank: false
  # after_create :broadcast_message

  # def broadcast_message
  #   ActionCable.server.broadcast("conversation_#{conversation_id}", {
  #     message_partial: ApplicationController.renderer.render(partial: "messages/active_show", locals: { m: self }),
  #     current_sender: sender
  #   })
  # end

end
