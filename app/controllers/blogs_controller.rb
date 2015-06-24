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
    @blog = Blog.new params.require(:blog).permit(:title, :body, :id, :published_on, :image)

    if @blog.save
       redirect_to root_path, notice: "You created a new blog post!"
    else
       render :new
     end

  end

  def update
    @blog = Blog.find params[:id]
    if @blog.update params.require(:blog).permit(:title,:body, :id, :published_on, :image)
      redirect_to blog_path(@blog), notice: "You updated a blog post!"
    else
      render :edit
    end
  end

    def delete
      @blog = Blog.find params[:id]
      @blog.destroy
      redirect_to root_path, notice: "You deleted a blog post!"
    end






end
