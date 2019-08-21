Rails.application.routes.draw do
  resources :categories
#  resources :replies
  devise_for :users
  resources :comments do
    resources :replies
  end
  resources :posts do
    resources :comments
  end
  resources :users
  root to: "posts#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
