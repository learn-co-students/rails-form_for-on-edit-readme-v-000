Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :edit, :create, :update]
  patch 'posts/:id', to: 'posts#update'
end
