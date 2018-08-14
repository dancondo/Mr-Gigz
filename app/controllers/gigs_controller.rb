class GigsController < ApplicationController
  before_action :set_bar, only: [:new, :create, :edit, :update]
  before_action :set_gig, only: [:show, :edit, :update, :destroy]

  def index
    @tags = Tag.all

    if params[:tag]
      tag = Tag.find(params[:tag])
      @gigs = tag.gigs
    else
      @gigs = Gig.where(active: true)
    end
  end

  def show
    @bar = @gig.bar
    @markers = [{
      lat: @bar.latitude,
      lng: @bar.longitude
    }]
  end

  def new
    @gig = Gig.new
  end

  def create
    @gig = Gig.new(gig_params)
    @gig.bar = @bar
    @gig.date = gig_params[:start_date].to_date
    if @gig.save
      redirect_to gigs_url
    else
      render :new
    end
  end

  def edit
  end

  def update
    @current_tags = GigTag.where(gig: @gig)
    @current_tags.destroy_all
    gig_params[:tag_ids].each do |tag_id|
      next if tag_id.empty?
      GigTag.create(gig: @gig, tag_id: tag_id)
    end
    @gig.date = gig_params[:start_date].to_date
    if @gig.update(gig_params)
      redirect_to gigs_url
    else
      render :edit
    end
  end

  def destroy
    @bar = @gig.bar
    if @gig.destroy
      redirect_to @bar
    else
      redirect_to bar_gig_url
    end
  end

  def select_band
    @gig = Gig.find(params[:gig_id])
    @gig.update(band_id: params[:band_id], active: false)
    redirect_to @gig
  end

  def select_band_via_chat
    gig =  Gig.find(params[:gig])
    band = Band.find(params[:band_id])
    bar = current_user.bar
    message = Message.create!(sender: current_user.role, bar: bar, band: band, gig: gig, content: "Parabens! O bar #{bar.name} selecionou a banda #{band.name} para o gig #{gig.title}!")
    gig.update(band: band, active: false)
    redirect_to conversation_url(element_id: params[:band_id])
  end

  private

  def set_gig
    @gig = Gig.find(params[:id])
  end

  def set_bar
    @bar = Bar.find(params[:bar_id])
  end

  def gig_params
    params.require(:gig).permit(:bar_id, :band_id, :description, :date, :start_date, :end_date, :cache, :title, :active, tag_ids: [])
  end

end
