class ItemsController < ApplicationController
  
  def index
    @all_items = Item.all
    @days = Day.all
  end

  def new
    @day = params[:day]
    @day_id = Day.find_by(description: @day)[:id]
  end

  def create
    title = params[:title]
    description = params[:description]
    day = params[:day]

    Item.create(title: title, description: description, day: day)

    redirect_to('/')
  end

  def edit
    @item = Item.find_by(id: params[:id])
  end

  def update
    new_title = params[:title]
    new_description = params[:description]

    item = Item.find_by(id: params[:id])
    item.update(title: new_title)
    item.update(description: new_description)

    redirect_to('/')
  end

  def delete
    item = Item.find_by(id: params[:id])
    item.destroy

    redirect_to('/', notice: 'Item was successfully deleted')
  end
end
