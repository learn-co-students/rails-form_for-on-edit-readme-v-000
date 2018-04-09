Rails.application.routes.draw do
  resources :posts, only: [:index, :create, :new, :show, :edit, :update]
  	
end