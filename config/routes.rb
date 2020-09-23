Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:create, :index, :new, :show] do
  resources :reviews, only: [:new, :create]
 end
 root to: 'restaurants#index'
end
