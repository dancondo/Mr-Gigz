class RolesController < ApplicationController
  def new
  end

  def create
    current_user.update(role: params[:user][:role])
    redirect_to public_send("new_#{current_user.role}_path")
  end

end
