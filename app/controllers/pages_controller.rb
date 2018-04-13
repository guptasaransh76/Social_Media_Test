class PagesController < ApplicationController

  #before_action :authenticate_user!
  # back-end code for pages/index
  def index

  end

  # back-end code for pages/home
  def home
    @posts = Post.all
    @newPost = Post.new

  end

  # back-end code for pages/profile
  def profile
    if(User.find_by_username(params[:id]))
     # grab username from the URL as :id
     @username = params[:id]

   else
     redirect_to root_path, :notice => "user not found"
   end

   #@posts = Post.where("user_id = ?", User.find_by_username(params[:id]).id)
   user = User.find_by_username(params[:id])
   @posts = user.posts
   @newPost = Post.new
   @toFollow = User.all.last(5)
  end

  # back-end code for pages/explore
  def explore
    @posts = Post.all
    @newPost = Post.new
    @toFollow = User.all.last(5)

  end
end
