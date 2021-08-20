class MenusController < ApplicationController
  before_action :authenticate_user!, except: [:index,:show]
  before_action :set_item,  only: [:show, :edit, :update]
  def index
    @users = User.all
    @users = User.order("created_at DESC")
    @menus = Menu.all
    @menus = Menu.order("created_at DESC")
  end

  def show
    
  end

  def new
  @menu = Menu.new
  end

  def create
    @menu = Menu.new(menu_params)
    if @menu.save
      redirect_to menus_path
    else
      render :new
    end
  end

  def edit

    unless user_signed_in? && current_user.id == @menu.user_id
      redirect_to action: :index
    end
  end

  def update

      if @menu.update(menu_params)
        redirect_to menu_path
       else
        render :edit
      end
  end

  def destroy
    menu = Menu.find(params[:id])
    menu.destroy
    redirect_to menus_path
end

  private

  def menu_params
    params.require(:menu).permit(:name,:image,:price,:profile).merge(user_id: current_user.id)
  end

  def set_item
    @menu = Menu.find(params[:id])
  end

end
