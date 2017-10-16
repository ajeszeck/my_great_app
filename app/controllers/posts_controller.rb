class PostsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
  end

  def create
    Post.create!(title: params[:title], description: params[:description], user_id: 1)
    redirect_to '/'
  end

  def update 
  end
end
