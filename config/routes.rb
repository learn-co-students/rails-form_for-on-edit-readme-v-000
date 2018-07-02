Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create, :edit]

  patch 'posts/:id', to: 'posts#update' #adding :update to resourse will make this route available.

end
