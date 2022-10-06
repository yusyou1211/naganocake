class Public::ItemsController < ApplicationController
  def index
    @genres = Genre.all
    if params[:genre_id]
      @genre = @genres.find(params[:genre_id])
      all_items = @genre.items
    else
      all_items = Item.where(is_active: true)
    end
    @items = all_items.page(params[:page]).per(8)
    @total_items = all_items.count
  end

  def show
    @genres = Genre.all
    if params[:genre_id]
      @genre = @genres.find(params[:genre_id])
      all_items = @genre.items
    else
      all_items = Item.where(is_active: true)
    end
    @items = all_items.page(params[:page]).per(8)
    @item = Item.find(params[:id])
    @cart_item = CartItem.new
  end

end
