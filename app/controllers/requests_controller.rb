class RequestsController < ApplicationController
  def show
    @request=Request.find(params['id'])
    @user=User.find(@request.user_id)
    render('show.html.erb')
  end
end
