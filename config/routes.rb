Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#home'

  get('/request/:id', {:controller => 'requests', :action => 'show'})

  get('/requests', {:controller => 'requests', :action => 'index'})

  get('/request', {:controller => 'requests', :action => 'new'})

  get('/create_request', {:controller => 'requests', :action => 'create'})

  get('/remove_request/:id', {:controller => 'requests', :action => 'remove'})

  get('/answer_request', {:controller => 'requests', :action => 'answer'})

  get('/make_item', {:controller => 'items', :action => 'new'})

  get('/create_item', {:controller => 'items', :action => 'create'})

  get('/items', {:controller => 'items', :action => 'index'})

  get('/remove_item/:id', {:controller => 'items', :action => 'remove'})

end
