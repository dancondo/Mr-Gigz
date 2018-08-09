class GigsController < ApplicationController
  before_action :set_bar, only: [:new, :create, :edit, :update]
  before_action :set_gig, only: [:show, :edit, :update, :destroy]

  def index
    @gigs = Gig.all
  end

  def show
  end

  def new
    @gig = Gig.new
  end

  def create
    @gig = Gig.new(gig_params)
    @gig.bar = @bar
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
    if @gig.update(gig_params)
      redirect_to @gig
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

  private

  def set_gig
    @gig = Gig.find(params[:id])
  end

  def set_bar
    @bar = Bar.find(params[:bar_id])
  end

  def gig_params
    params.require(:gig).permit(:bar_id, :description, :start_date, :end_date, :cache, :title, :active, tag_ids: [])
  end

end
