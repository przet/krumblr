class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def create
    @blog = Blog.find(params[:blog_id])
    @post = @blog.posts.create(params[:post].permit(:title, :body))

    if @post.save
      redirect_to blog_path(@blog)
    else
    render 'new'
    end
  end

  def destroy
    @blog = Blog.find(params[:blog_id])
    @post = @blog.posts.find(params[:id])
    @post.destroy
    redirect_to blog_path(@blog)
  end
end
