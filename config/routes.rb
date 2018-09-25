Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create, :edit]
  # resources :posts, only: %i[index show new create edit update]
  patch 'posts/:id', to: 'posts#update'
end
