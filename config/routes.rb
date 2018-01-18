Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create, :edit]

  patch '/posts/:id' => 'posts#update'
end
