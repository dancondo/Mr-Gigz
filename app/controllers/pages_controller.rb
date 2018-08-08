class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :bands_home]

  def home
  end

  def bands_home
  end
end
