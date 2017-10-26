class PortfolioController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.friendly.find(params[:slug])
  end

  def edit
    @posts = Post.friendly.find(params[:slug])
  end

  def update
    @posts = Post.find(params[:slug])
    post.update_attributes(post_update_params)
    if post.save
      redirect_to root_path
    end
  end

  def destroy
    post_id = params[:id]
    post = Post.find_by_id(post_id)
    post.destroy
    redirect_back(fallback_location: portfolio_path)
  end

end
