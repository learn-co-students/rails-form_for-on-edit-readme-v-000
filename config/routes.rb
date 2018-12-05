Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create, :edit]
  # or add update as additional argument to the resources method array, and the route below will happen automatically.

  patch 'posts/:id', to: 'posts#update'
end
