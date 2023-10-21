class Admin::GenresController < ApplicationController
  def index
    @genres = @item.genres.page(params[:page])
  end
end
