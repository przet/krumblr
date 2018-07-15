Rails.application.routes.draw do
  get 'posts/show'
  get 'posts/index'
  get 'posts/new'
  get 'blogs/show'
  get 'blogs/index'
  get 'blogs/new'
  devise_for :users
  resources :blogs do
    resources :posts
    get 'posts/show'
    get 'posts/index'
    get 'posts/new'
  end
  resources :posts
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
