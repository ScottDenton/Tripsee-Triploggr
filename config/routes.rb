Rails.application.routes.draw do
  
  resources :users do
    resources :trips do
      resources :memories
    end
  end

  resources :comments
  resources :locations


  root  'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
