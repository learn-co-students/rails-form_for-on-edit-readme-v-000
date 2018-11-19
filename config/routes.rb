Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create, :edit, :update]

  #The below line of code is replaced with :update in resources 
  # patch '/posts/:id', to: 'posts#update'
end
