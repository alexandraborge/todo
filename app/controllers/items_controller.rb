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
    title = params['title']
    description = params['description']
    day = params['day']

    Item.create(title: title, description: description, day: day)

    redirect_to('/')
  end

  def edit
    @item_id = params[:id]
    @item = Item.find_by(id: @item_id)
    @item_title = @item[:title]
    @item_description = @item[:description]
  end

  def update
    title = params[:title]
    description = params[:description]
    previous_title = params[:previous_title]
    previous_description = params[:previous_description]

    new_title = title.blank? ? previous_title : title
    new_description = description.blank? ? previous_description : description

    item = Item.find_by(id: params[:id])
    item.update(title: new_title)
    item.update(description: new_description)

    redirect_to('/')
  end
end
