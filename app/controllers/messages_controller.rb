class MessagesController < ApplicationController
  # before_action :set_element, only: [:index, :show, :create]
  # before_action :set_roles
  # before_action :set_bar, only: [:new, :create]
  # before_action :set_band, only: [:new, :create]

  def index
    if current_user.role == 'bar'
      @element = Message.where(bar: current_user.bar).map{|m| Band.find(m.band_id)}.uniq
    else
      @element = Message.where(band: current_user.band).map{|m| Bar.find(m.bar_id)}.uniq
    end
    # @messages = Message.where(current_user.role.to_sym => current_user.send(current_user.role))
  end

  def new
    @element_id = params[:element_id]
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    @message.sender = current_user.role
    @message.conversation = Conversation.find(params[:conversation_id])
    @element_id = params[:element_id]
    if @message.sender == 'bar'
      @message.bar = current_user.bar
      @message.band = Band.find(@element_id)
    else
      @message.band = current_user.band
      @message.bar = Bar.find(@element_id)
    end
    if @message.save
      respond_to do |format|
        format.html { redirect_to conversation_url(element_id: @element_id) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render :new }
        format.js  # <-- idem
      end
    end
  end

  private

  # def set_roles
  #   if current_user.role == 'bar'
  #     @sender_object = current_user.bar
  #     @receiver_object = params[:element]
  #   else
  #     @sender_object = current_user.band
  #     @receiver_object = params[:element]
  #   end
  #   @sender = current_user.role
  # end

  def message_params
    params.require(:message).permit(:content, :bar_id, :band_id, :conversation_id, :sender)
  end

end
