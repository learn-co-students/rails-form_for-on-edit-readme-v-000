Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts, only: [:index, :show, :new, :create, :edit, :update]
  # put 'posts/:id', to: 'posts#update' 
  # patch 'posts/:id', to: 'posts#update'
  # Note: If I add an invalid route to the #only array, it won't show up in `rails routes`.
end
