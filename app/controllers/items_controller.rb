class ItemsController < ApplicationController
  
  def index
    @all_items = Item.all
    @days = Day.all
  end

  def new
    @day = params[:day]
    @day_id = Day.all.find { |day| day[:description] == @day }[:id]
  end

  def create
    title = params['title']
    description = params['description']
    day = params['day']

    Item.create(title: title, description: description, day: day)

    redirect_to('/')
  end

  def edit
  end
end
