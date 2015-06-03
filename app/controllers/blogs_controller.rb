class BlogsController < ApplicationController

  def welcome
    @blogs = Blog.all
  end

  def show
    @blog = Blog.find params[:id]

  end






end
