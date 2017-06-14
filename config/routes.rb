Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#home'

  get('/request/:id', {:controller => 'requests', :action => 'show'})

  get('/requests', {:controller => 'requests', :action => 'index'})

  get('/request', {:controller => 'requests', :action => 'new'})

  get('/create_request', {:controller => 'requests', :action => 'create'})

  get('/remove_request/:id', {:controller => 'requests', :action => 'remove'})

end
