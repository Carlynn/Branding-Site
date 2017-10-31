class PortfolioController < ApplicationController

  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def show
    @post = Post.friendly.find(params[:slug])
    @postimages = @post.images
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    @admin = current_admin
    if @post.save
      @admin.posts << @post
      if params[:images]
        params[:images].each { |image|
          @post.images.create(image: image)
        }
      end
    end
    redirect_to portfolio_path(@post)
  end

  def edit
    @post = Post.friendly.find(params[:slug])
    @postimages = @post.images
  end

  def update
    @post = Post.find_by(params[:slug])
    @postimages = @post.images
    if @post.save
      @post.update(post_params)
      if params[:images]
        params[:images].each { |image|
          @post.images.create(image: image)
        }
      end
      redirect_to portfolio_path(@post)
    else
      flash[:error] = @post.errors.messages[:title].join(". ")
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

  # def image_params
  #   params.permit(:image, :image_file_name, :image_content_type, :image_file_size, :image_updated_at)
  # end

end
