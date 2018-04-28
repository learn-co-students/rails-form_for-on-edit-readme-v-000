Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create, :edit]

  patch 'post/:id', to: 'posts#update'
end
