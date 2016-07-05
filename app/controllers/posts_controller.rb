class PostsController < ApplicationController
  def index
    @post = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    redirect_to posts_path
  end

  def show
    @post = Post.find(params[:id])
  end

  def delete
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to(post_path(@post))
  end
private
  def post_params
    params.require(:post).permit(:image,:caption)
  end
end
