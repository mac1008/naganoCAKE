class Admin::ItemsController < ApplicationController
  def new
    @item = Item.new
  end
  def create
    item = Item.new(item_params)
    item.save
    redirect_to admin_item(item.id)
  end
  def index
    @items = Item.page(params[:page])
  end

  def show
    @item = Item.find(params[:id])
  end

  private
  def item_params
    params.require(:item).permit(:genre_id, :name, :introduction, :price, :image, :is_active)
  end
end
