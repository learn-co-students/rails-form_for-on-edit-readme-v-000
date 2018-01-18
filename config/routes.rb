Rails.application.routes.draw do
  resources :posts, except: :delete #, only: [:index, :show, :new, :create, :edit,]
end
