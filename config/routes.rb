Rails.application.routes.draw do
  resources :posts, only: [:index, :edit, :show, :new, :create, :update]

end
