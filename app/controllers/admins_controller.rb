class AdminsController < ApplicationController

  def show
    @admin = Admin.friendly.find(params[:slug])
  end

  # Is this better here or in the models?
  private

  def admin_params
    params.require(:admin).permit(:first_name, :last_name, :email, :password, :image)
  end

  def admin_update_params
    params.require(:admin).permit(:first_name, :last_name, :email, :image)
  end

end
