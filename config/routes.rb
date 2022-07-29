
Rails.application.routes.draw do
  get '/users/new'
  get '/users/create'
  get '/users/destroy'
  get '/users/signup'
  get '/users/login'
  get '/users/profile'
  get '/users/edit-profile'
  match "/logout", :to => "users#destroy", :via => :post
  match "/create_user", :to => "users#new", :via => :post
  match "/login_user", :to => "users#create", :via => :post
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'users#index'
end
