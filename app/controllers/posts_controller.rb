class PostsController < ApplicationController
  # index
  def index
    @posts = Post.all
  end

  #show
  def show
    @post = Post.find(params[:id])
  end

  # new
  def new
    @post = Post.new
  end

  # create
  def create
    @post = Post.create!(post_params)
    redirect_to "/posts/#{@post.id}"
  end
  #

  #
  # # edit
  # def edit
  #   @post = Post.find(params[:id])
  # end
  #
  #
  # # update
  # def update
  #   @post = Post.find(params[:id])
  #   @post.update(Post_params)
  #
  #   redirect_to "/Posts/#{@posts.id}"
  # end
  #
  # # destroy
  # def destroy
  #   @post = Post.find(params[:id])
  #   @post.destroy
  #
  #   redirect_to "/Post"
  # end
  #
private
  def post_params
    params.require(:post).permit(:content, :is_published)
  end
end
