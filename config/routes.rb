Rails.application.routes.draw do
  resources :posts, only: [:index, :create, :new, :show, :edit, :update]
  	# patch 'posts/:id', to: 'posts/#update'
end