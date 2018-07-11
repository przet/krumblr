Rails.application.routes.draw do
  devise_for :users
  #root routes
  root 'login#rootview'
  #get 'login/rootview'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
