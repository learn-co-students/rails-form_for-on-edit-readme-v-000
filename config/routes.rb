Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create, :edit]
  pach 'posts/:id', to: 'posts#update'
end
