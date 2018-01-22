Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create, :edit]
  #could be written as: 
  #resources :posts, only: [:index, :show, :new, :create, :edit, :update]
  patch 'posts/:id', to: 'posts#update'
end