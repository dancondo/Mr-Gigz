  class BandsController < ApplicationController

  before_action :set_band, only: [:show, :edit, :update, :destroy]

  def index
    @tags = Tag.all

    if params[:tag]
      tag = Tag.find(params[:tag])
      @bands = tag.bands
    else
      @bands = Band.all
    end
  end

  def show
    @conversation = Conversation.new
  end

  def new
    @band = Band.new
  end

  def create
    @band = Band.new(band_params)
    @band.user = current_user
    band_params[:tag_ids].each do |tag_id|
      next if tag_id.empty?
      MyTag.create(band: @band, tag_id: tag_id)
    end
    if @band.save
      redirect_to @band
    else
      render :new
    end
  end

  def edit
  end

  def update
    @current_tags = MyTag.where(band: @band)
    @current_tags.destroy_all
    band_params[:tag_ids].each do |tag_id|
      next if tag_id.empty?
      MyTag.create(band: @band, tag_id: tag_id)
    end
    if @band.update(band_params)
      redirect_to @band
    else
      render :edit
    end
  end

  def destroy
    if @band.destroy
      redirect_to bands_path
    else
      redirect_to @band
    end
  end

  private

  def set_band
    @band = Band.find(params[:id])
  end

  def band_params
    params.require(:band).permit(:name, :photo, :description, :minimum_price,
                                 tag_ids: [])
  end

end
