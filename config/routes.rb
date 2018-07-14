Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create, :edit]

  # we need the line below to use form_for since it uses the patch and not puts method
  patch 'posts/:id', to: 'posts#update'
end
