class ItemsController < ApplicationController

  def new
    @make_item=Item.new
    render(
    'new.html.erb'
    )
  end

  def create
    i=Item.new
    i.name=params['name']
    i.description=params['description']
    i.image=params['image']
    i.is_public=params['is_public']
    i.user_id=params['user_id']
    i.save
    redirect_to('/items')
  end

  def index
    @items=Item.all
    render('index.html.erb')
  end

  def remove
      @items=Item.find(params['id'])
      @items.destroy
      redirect_to "/items"
  end

end
