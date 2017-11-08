class PagesController < ApplicationController
  def home
    if current_user.present?
      @responses=Response.where(:user_id => current_user.id)
    end
    render('home.html.erb')
  end
end
