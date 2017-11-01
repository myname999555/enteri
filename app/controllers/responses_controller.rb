class ResponsesController < ApplicationController

  def answer
    r=Response.new
    r.item_id=params['item_id']
    r.description=params['description']
    r.request_id=params['request_id']
    r.user_id=params['user_id']
    r.save
    render(
    'answer.html.erb'
    )
  end

  def index
    @requests=Request.where(:user_id => current_user.id)
    request_ids=[]
    @requests.each do |request|
      request_ids.push(request.id)
    end
    @responses=Response.where(:request_id => request_ids)
    render(
      'index.html.erb'
    )
  end

  def alerts
    render(
      'alerts.html.erb'
    )
  end

  def accept
    r=Response.find(params['response_id'])
    r.accept=params['accept']
    r.save
    redirect_to(
      '/responses', notice: "You successfully accept this response."
    )
  end

  def reject
    r=Response.find(params['response_id'])
    r.accept=params['accept']
    r.save
    redirect_to(
      '/responses', notice: "You successfully rejected this response."  
    )
  end

end
