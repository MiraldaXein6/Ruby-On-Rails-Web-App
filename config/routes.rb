Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
 root 'products#index', as: :authenticated_root
  end
  
    root "application#landing"





  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'products#index'
  resources :products
end
