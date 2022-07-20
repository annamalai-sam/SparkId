Rails.application.routes.draw do
  get 'users/new'
  get 'users/create'
  get 'users/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'user#signup'
end
