class AppliesController < ApplicationController
  def create
    raise
    @apply = Apply.new
    @gig = params[:gig_id]
    @apply.gig = @gig
  end
end
