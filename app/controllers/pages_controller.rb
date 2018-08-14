class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :bands_home]

  def home
    @gigs = Gig.all
    @markers = @gigs.map do |gig|
      {
        lat: gig.bar.latitude,
        lng: gig.bar.longitude,
        infoWindow: { content: render_to_string(partial: "./gigs/map_box", locals: { gig: gig }) }
      }
    end
  end

  def band_home
    @gigs = Gig.all
    @markers = @gigs.map do |gig|
      {
        lat: gig.bar.latitude,
        lng: gig.bar.longitude,
        infoWindow: { content: render_to_string(partial: "./gigs/map_box", locals: { gig: gig }) }
      }
    end
  end
end
