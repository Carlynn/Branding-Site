class ImagesController < ApplicationController

  def destroy
    image = Image.find_by_id(params[:id])
    image.destroy
    redirect_to(edit_portfolio_path(image))
  end

end
