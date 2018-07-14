class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def submit
    @post = Post.new
    if @post.save
      flash[:notice] = "Post submitted"
      redirect_to post_path(@post)
    else
      flash[:alert] = "Error in post submission"
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end

end
