class BlogsController < ApplicationController

  def index
    @blogs = Blog.all
  end

  def show
    @blog = Blog.find params[:id]
  end

  def new
    @blog = Blog.new
  end

  def edit
    @blog = Blog.find params[:id]
  end

  def create
    @blog = Blog.new params.require(:blog).permit(:title, :body, :id)

    # if @blog.save
    #    redirect_to root_path
    # else
    #    render :new
    #  end
  end

  def update
    @blog = Blog.find params[:id]


  end












end
