class Admin::ItemsController < ApplicationController
  def new
    @coutomer = Customer.new
  end
  def create

  end
  def index

  end

  private
  def item_params
    params.require(:item).permit(:genre_id, :name, :introduction, :price, :image)  end
end
