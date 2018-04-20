class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def new
  end

  def create
  end

  def edit
    # binding.pry
    writer_email_id = Blog.find_by(id: params[:id]).user.email
    if current_user.email != writer_email_id
      flash[:error] = "You are not authorized to edit this blog"
      redirect_to root_url
    end
  end

  def show
  end

  def update
  end

  def destroy
  end
end
