class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:index,:show]
  def index
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    if current_user.update(user_params)
      redirect_to user_path
     else
      render :edit
    end
  end

  def destroy
    user = User.find(params[:id])
    if user.destroy
      redirect_to root_path
     else
      render :show
    end
  end

  private

  def user_params
    params.require(:user).permit(:access, :holiday, :word, :money, :profile, :image)
  end




end
