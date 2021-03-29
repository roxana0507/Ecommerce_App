Rails.application.routes.draw do
  devise_for :users
  devise_for :admins
  authenticate :admin do 
    resources :products
    resources :categories
  end
  #root to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
