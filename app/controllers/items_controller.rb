class ItemsController < ApplicationController
  
  def index
    @all_items = Item.all
    @days = Day.all
  end
end
