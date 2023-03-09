class UsersController < ApplicationController
  def show
  end

  def edit
    @user = User.find(params[:id])
  end

  def index
    @books = Book.all
  end

  private
  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end

end
