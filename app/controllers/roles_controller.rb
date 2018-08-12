class RolesController < ApplicationController
  def new
  end

  def create
    resource = Object.const_get(params[:user][:role].capitalize).new(user: current_user)
    current_user.update(role: params[:user][:role])
    redirect_to send("new_#{current_user.role}_path")
  end

end
