Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create, :edit]
  patch 'posts/:id', to: 'posts#update'
  # alternatively, can add `:update` to `resources` to accomplish code in line 3
end
