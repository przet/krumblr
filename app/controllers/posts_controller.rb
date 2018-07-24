class PostsController < ApplicationController
  #def new
  #  @post = Post.new
  #end

  def index
    @posts = Post.all
  end

  def create
    #if params[:blog_id].present?
      @blog = Blog.find(params[:blog_id])
      @post = @blog.posts.create(params[:post].permit(:title, :body))

      if @post.save
        redirect_to blog_path(@blog)
      else
        render 'new'
      end

    #end
  end

  #def show
  #  @post = Post.find(params[:id])
  #end

# def submit
#    @blog = Blog.find(params[:blog_id])if params[:blog_id].present?
#    @post = @blog.posts.create(params[:post].permit(:title, :body, :blog_id))
#    #@post = Post.new
#    if @post.save
#      flash[:notice] = "Post submitted"
#      redirect_to post_path(@post)
#    else
#      flash[:alert] = "Error in post submission"
#      render :new
#    end
#  end

  def destroy
    @blog = Blog.find(params[:blog_id])
    @post = @blog.posts.find(params[:id])
    @post.destroy
    redirect_to blog_path(@post)
  end

  #private

  #def post_params
  #  #params.require(:post).permit(:title, :body, :blog_id)
  #  params.require(:post).permit(:title, :body)
  #end

end
