class AdminsController < ApplicationController

  def show
    @admin = Admin.friendly.find(params[:slug])
  end

  # Is this better here or in the models?
  private

  def admin_params
    params.require(:admin).permit(:first_name, :last_name, :email, :password, :image, :authentication_code)
  end

  def admin_update_params
    params.require(:admin).permit(:first_name, :last_name, :email, :image)
  end

  # def authentication_code
  #   explode
  #   if authentication_code === ENV.fetch('AUTHENTICATION_CODE')
  #     <em>"Does not match authentication code, try again"</em>
  #   end
  # end

end
