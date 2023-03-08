class UsersController < ApplicationController
  def show
  end

  def edit
  end

  def index
    @books = Book.all
  end
end
