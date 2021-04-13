Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts, only: [:index, :show, :new, :create, :edit, :update]
  # the lesson asks you to do this, but I learned in previous
  # lesson that this is redundant. When I run rails routes,
  # I get 2 PATCH routes that look identical, so trying to
  # run the tests with only the above
  # patch 'posts/:id', to: 'posts#update'
end
