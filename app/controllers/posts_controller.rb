class PostsController < ApplicationController
  def create
    @post = Post.new(post_params)
    @post.user = current_user
    @post.save
    redirect_to root_path
  end
  def index
  end  
  def show
    @post = Post.find(params[:id])
  end
  private
  def post_params
    params.require(:post).permit(:content,:photo)
  end
end
