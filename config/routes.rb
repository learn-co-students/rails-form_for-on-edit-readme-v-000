Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create, :edit]
  patch 'posts/:id', to: 'posts#update'
  # you can either do patch, or add :update to the above array
end