class AppliesController < ApplicationController

  before_action :set_gig, only: [:create, :destroy]

  def create
    @apply = Apply.new
    @apply.gig = @gig
    @apply.band = current_user.band
    if @apply.save
      # UserMailer.apply(@gig.bar.user).deliver_now
      redirect_to gigs_url
    end
  end

  def destroy
    @apply = Apply.find_by(band: current_user.band, gig: @gig)
    if @apply.destroy
      redirect_to gigs_url
    end
  end

  private

  def set_gig
    @gig = Gig.find(params[:gig_id])
  end

end
