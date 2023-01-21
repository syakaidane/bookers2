class UsersController < ApplicationController

  def create
    book = Book.new(book_params)
    book.save
    redirect_to '/users'
  end

  def index
    @user = current_user
  end

  def show
    @user = User.find(params[:id])
    @book = Book.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to user_path(user.id)
  end

  private
  def user_params
    params.require(:user).permit(:title, :body, :image)
  end
end
