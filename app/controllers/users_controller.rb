class UsersController < ApplicationController
  def new
  end

  def create
  end

  def index
  end

  def show
    @user = User.find(params[:id])  
  end

  def edit
  end
end
