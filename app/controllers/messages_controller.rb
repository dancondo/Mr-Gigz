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
  end

  def new
    @element_id = params[:element_id]
    @message = Message.new
  end

  def conversation
    # @conversation = Conversation.find(params[:id])
    # @message.conversation = @conversation
    @message = Message.new
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
    @message = Message.new(message_params)
    @message.sender = current_user.role
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

  def message_params
    params.require(:message).permit(:content, :bar_id, :band_id, :sender)
  end

end
