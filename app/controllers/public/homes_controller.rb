class Public::HomesController < ApplicationController
  def top
    @genres = Genre.all
    if params[:genre_id]
      @genre = @genres.find(params[:genre_id])
      all_items = @genre.items
    else
      all_items = Item.where(is_active: true)
    end
    @items = Item.order(created_at: :desc).limit(4)
  end

  def about
  end
end
