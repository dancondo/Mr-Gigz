class Message < ApplicationRecord
  belongs_to :bar
  belongs_to :band
  validates :content, presence: true, allow_blank: false
  after_create :broadcast_message

  # def from?(some_user)
  #   user == some_user
  # end

  def broadcast_message
    ActionCable.server.broadcast("conversation", {
      message_partial: ApplicationController.renderer.render(partial: "messages/active_show", locals: { m: self }),
      current_sender: sender
    })
  end

end
