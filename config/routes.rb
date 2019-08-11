Rails.application.routes.draw do
  resources :replies do
    resources :likes
  end
  devise_for :users
  resources :comments do
    resources :likes
  end
  resources :posts do
    resources :comments
    resources :likes
  end
  resources :likes
  resources :users
  root to: "posts#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
