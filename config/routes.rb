Rails.application.routes.draw do
  devise_for :users
  resources :posts do
    resources :comments
  end
  resources :blogs do
    resources :posts
    get 'posts/show'
    get 'posts/index'
    get 'posts/new'
  end
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
