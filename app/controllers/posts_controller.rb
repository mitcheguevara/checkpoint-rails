class PostsController < ApplicationController
  # index
  def index
    @posts = Post.all
  end

  # new
  def new
    @post = Post.new
  end

  # create
  def create
    @post = Post.create!(Posts_params)

    redirect_to "/Post/#{@posts.id}"
  end

  #show
  def show
    @post = Post.find(params[:id])
  end

  # edit
  def edit
    @post = Post.find(params[:id])
  end


  # update
  def update
    @post = Post.find(params[:id])
    @post.update(Post_params)

    redirect_to "/Posts/#{@posts.id}"
  end

  # destroy
  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to "/Post"
  end

  private
  def Post_params
    params.require(:Post)
  end
end
