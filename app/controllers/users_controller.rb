class UsersController < ApplicationController
  def new
    @book = Book.new
  end

  def create
  end

  def index
    @user = current_user
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
  end

end
