class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :bands_home]

  def home
  end

  def band_home
    @bars = Bar.where.not(gigs: nil, latitude: nil, longitude: nil)
    @markers = @bars.map do |bar|
      {
        lat: bar.latitude,
        lng: bar.longitude#,
        # infoWindow: { content: render_to_string(partial: "/bars/map_box", locals: { bar: bar }) }
      }
    end
  end
end
