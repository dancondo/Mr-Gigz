class BandsController < ApplicationController

  before_action :set_band, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      sql_query = "title ILIKE :query OR syllabus ILIKE :query"
      @bands = Band.where(sql_query, query: "%#{params[:query]}%")
    else
      @bands = Band.all
    end
  end

  def show
  end

  def new
    @band = Band.new
  end

  def create
    @band = Band.new(band_params)
    if @band.save
      redirect_to @band
    else
      render :new
    end
  end

  def edit
  end

  def update
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
    params.require(:band).permit(:name, :photo, :description)
  end

end
