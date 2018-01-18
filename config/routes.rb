Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create, :edit]
  #add update to resources, or:
  patch 'posts/:id', to: 'posts#update'
end