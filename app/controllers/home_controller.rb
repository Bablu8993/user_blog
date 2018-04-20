class HomeController < ApplicationController
  def index
    @blogs = Blog.includes(:user).all
  end

  def create
  end

  def show
  end

  def edit
  end

  def delete
  end

  def update
  end

  def destroy
  end
end
