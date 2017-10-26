class AdminsController < ApplicationController

  def show
    @admin = Admin.friendly.find(params[:slug])
  end

end
