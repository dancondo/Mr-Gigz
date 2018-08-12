class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :bands_home]

  def home
    @bars = Bar.where.not(gigs: nil, latitude: nil, longitude: nil)
  end

  def bands_home
  end
end
