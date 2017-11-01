class ImagesController < ApplicationController

  def destroy
    image = Image.find_by_id(params[:id])
    @post_id = image.post_id
    image.destroy
    redirect_to edit_portfolio_path(@post_id)
  end

end
