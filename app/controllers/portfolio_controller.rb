class PortfolioController < ApplicationController

  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def show
    @post = Post.friendly.find(params[:slug])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    @admin = current_admin
    if @post.save
      @admin.posts << @post
    end
    redirect_to portfolio_path(@post)
  end

  def edit
    @posts = Post.friendly.find(params[:slug])
  end

  def update
    @posts = Post.find_by(params[:slug])
    if @posts.save
      @posts.update(post_params)
      redirect_to portfolio_path(@posts)
    else
      flash[:error] = @posts.errors.messages[:title].join(". ")
      render :edit
    end
  end

  def destroy
    post_id = params[:id]
    post = Post.find_by_id(post_id)
    post.destroy
    redirect_back(fallback_location: portfolio_path)
  end

  private

  def post_params
    params.require(:post).permit(:title, :description, :slug, :image)
  end

end
