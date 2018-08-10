class ConversationsController < ApplicationController
  def show
    @conversation = Conversation.find(params[:id])
    @message = Message.new
    @message.conversation = @conversation
    @message.sender = current_user.role
    if current_user.role == 'bar'
      @messages = Message.where(bar: current_user.bar, band_id: params[:element_id])
      @element_id = params[:element_id]
      @element = Band.find(@element_id)
    else
      @messages = Message.where(band: current_user.band, bar: params[:element_id])
      @element_id = params[:element_id]
      @element = Bar.find(@element_id)
    end
  end

  def create
    @element_id = params[:element_id]
    @conversation = Conversation.new
    @conversation.save
    redirect_to conversation_url(@conversation, element_id: @element_id)
  end

end
