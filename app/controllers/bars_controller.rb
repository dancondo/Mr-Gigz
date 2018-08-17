class BarsController < ApplicationController
  before_action :set_bar, only: [:show, :update, :edit, :destroy]

  def index
    @bars = Bar.all
  end

  def show
    @upcoming_gigs = Gig.where(bar: @bar, active: false).where.not(band: nil).order(:start_date)
    @gig = Gig.where(bar: @bar, date: Date.today)[0]
    @markers = [{
      lat: @bar.latitude,
      lng: @bar.longitude
    }]
  end

  def new
    @bar = Bar.new
  end

  def dashboard
    @bar = current_user.bar
    @bands = Message.where(bar: @bar).order(created_at: :desc).map{ |m| Band.find(m.band_id) }.uniq
    @gigs = Gig.where(bar: @bar, active: true).order(:start_date)
    @upcoming_gigs = Gig.where(bar: @bar, active: false).where.not(band: nil).order(:start_date)
    @gig = Gig.new
    @gigs_by_date = Gig.where(bar: @bar).group_by(&:date)
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
  end

  def create
    @bar = Bar.new(bar_params)
    @bar.user = current_user
    if @bar.save
      redirect_to @bar
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @bar.update(bar_params)
      redirect_to @bar
    else
      render_new
    end
  end

  def destroy
    if @bar.destroy
      redirect_to bars_path
    else
      redirect_to @bar
    end
  end

  private

  def bar_params
    params.require(:bar).permit(:name, :address, :photo, :user_id)
  end

  def set_bar
    @bar = Bar.find(params[:id])
  end
end
