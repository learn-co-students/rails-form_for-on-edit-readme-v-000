Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create, :edit, :update] #update added
  # or add the following:   patch 'posts/:id', to: 'posts#update'
end