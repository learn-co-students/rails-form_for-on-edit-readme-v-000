Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create, :edit, :update]
# add update above or patch below
# patch 'posts/:id', to: 'posts#udpate'
end
