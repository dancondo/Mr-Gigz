module ApplicationHelper
  def home_path
    if user_signed_in? && current_user.band
      sou_banda_path
    else
      root_path
    end
  end

  def brand_class_from_page
    if current_page?(root_path)
      'navbar-brand navbar-brand__home'
    else
      'navbar-brand'
    end
  end
end
