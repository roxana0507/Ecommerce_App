Rails.application.routes.draw do
  resources :carts, only: %i[show update]
  devise_for :users
  devise_for :admins
  root "home#index"

  authenticate :admin do 
    resources :products
    resources :categories
  end
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
