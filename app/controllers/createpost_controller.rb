class CreatepostController < ApplicationController
  def new
    @posts = Post.new
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
end
