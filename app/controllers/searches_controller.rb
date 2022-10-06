class SearchesController < ApplicationController
  def search
    @items = Item.looks(params[:search], params[:word])
  end
end
