class UsersController < ApplicationController

  def index
    @users = User.all
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end
  
  def get_image
    if image.attached?
      image
    else
      'no_image.jpg'
    end
  end
  # サイズを調整できるようにしてから使う。

  private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end

end
