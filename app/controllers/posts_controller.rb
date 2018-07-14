class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def index
    @posts = Post.all
  end

  def create
    @blog = Blog.find(params[:blog_id])
    @post = @blog.posts.create(params[:post].permit(:title, :body))
    if @post.save
      redirect_to post_path(@post)
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

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end

end
