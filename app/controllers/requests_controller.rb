class RequestsController < ApplicationController

  def show
    @request=Request.find(params['id'])
    @user=User.find(@request.user_id)
    render('show.html.erb')
  end

  def index
    @requests=Request.all
    render('index.html.erb')
  end

  def new
    @requesting=Request.new
    render(
    'new.html.erb'
    )
  end

  def create
    r=Request.new
    r.item_id=params['item_id']
    r.description=params['description']
    r.is_public=params['is_public']
    r.user_id=params['user_id']
    r.save
    redirect_to('/requests')
  end

  def remove
      @request=Request.find(params['id'])
      @request.destroy
      redirect_to "/requests"
  end

  def answer
    render(
      'answer.html.erb'
    )
  end

end
