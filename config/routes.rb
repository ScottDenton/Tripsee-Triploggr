Rails.application.routes.draw do

  resources :trips do
    resources :memories
  end
  
  resources :comments
  resources :locations
  resources :users

  root  'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
