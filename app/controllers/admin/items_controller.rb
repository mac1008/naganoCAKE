class Admin::ItemsController < ApplicationController
  def index
    @items_Item.all
  end
end
