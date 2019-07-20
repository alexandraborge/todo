class ItemsController < ApplicationController
  
  def index
    @all_items = Item.all
  end
end
