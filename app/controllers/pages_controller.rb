# This is a all Pages Controller and code for any page inside of/pages
class PagesController < ApplicationController
  
  # back-end for code for pages/index
  def index
  end
  
  # back-end for code for pages/home
  def home
    @posts = Post.all
  end

  # back-end for code for pages/profile
  def profile
    if (User.find_by_username(params[:id]))
      @username = params[:id]
    else
      redirect_to root_path, :notice => "User not found!"
    end
    @posts = Post.all.where("user_id = ?", User.find_by_username(params[:id]))
    @newPost = Post.new
  end

  # back-end for code for pages/explore
  def explore
    @posts = Post.all
  end
end
