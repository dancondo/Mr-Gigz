class BarsController < ApplicationController
  before_action :set_bar, only: [:show, :update, :edit, :destroy]

  def index
    @bars = Bar.all
  end

  def show
  end

  def new
    @bar = Bar.new
  end

  def create
    @bar = Bar.new(bar_params)
    if @bar.save
      redirect_to bars_path
    else
      render_new
    end
  end

  def edit
  end

  def update
    if @bar.update(bar_params)
      redirect_to bars_path
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
    params.require(:bar).permit(:name, :address, :photo)
  end

  def set_bar
    @bar = Bar.find(params[:id])
  end
end
