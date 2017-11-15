class Response < ApplicationRecord

  def request
    return Request.find(request_id)
  end

  def user
    return User.find(user_id)
  end

  def item
    item=Item.find(request.item_id) 
  end

end
