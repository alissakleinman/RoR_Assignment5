class PostsController < ApplicationController
  def index
   @posts = Post.all
  end

  def show
    @post = Post.find_by_id(params[:id])
  end

  def edit
    @post = Post.find_by_id(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])
    end

  def destroy
    @post = Post.find_by_id(params[:id])
    @post.destroy
    flash[:notice] = "This post was deleted"
    redirect_to posts_path
  end
end
