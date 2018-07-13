Rails.application.routes.draw do
  get 'createpost/write'
  get 'createpost/write_form'
  devise_for :users
  resources :posts
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
