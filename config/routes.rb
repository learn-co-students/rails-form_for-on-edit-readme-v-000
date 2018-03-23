Rails.application.routes.draw do
  resources :posts, :fishes, only: [:index, :show, :new, :create, :edit, :update]
end
