Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create, :edit]

  get 'posts/:id', to: 'posts#edit'
  patch 'posts/:id', to: 'posts#update'

end
