class GigsController < ApplicationController
  before_action :set_bar, only: [:new, :create, :edit, :update]
  before_action :set_gig, only: [:show, :edit, :update, :destroy]

  def index
    @tags = Tag.all

    if params[:tags]
      @select_tags = params[:tags].map { |tag| Tag.find(tag) }
      hash_gigs = {}
      @select_tags.map { |tag| tag.gig_tags.map do|gig_tag|
        if hash_gigs[gig_tag.gig] && gig_tag.gig.active
            hash_gigs[gig_tag.gig] += 20
        elsif gig_tag.gig.active
          if gig_tag.gig.gig_tags.count > @select_tags.count
            hash_gigs[gig_tag.gig] = 20 * (@select_tags.count - gig_tag.gig.gig_tags.count)
          elsif gig_tag.gig.gig_tags.count < @select_tags.count
            hash_gigs[gig_tag.gig] = 10 * (@select_tags.count - gig_tag.gig.gig_tags.count)
          else
            hash_gigs[gig_tag.gig] = 30
          end
        end
      end
      }
      @gigs = []
      hash_gigs.sort_by { |k, v| v }.reverse.each { |e| @gigs << e[0] }
    else
      @gigs = Gig.where(active: true).map
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
      redirect_to @gig
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
