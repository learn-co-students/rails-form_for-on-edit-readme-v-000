Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create, :edit, :update]
end
# adding :update to above array is the same as saying:
# patch '/posts/:id', to: 'posts#update'
# route is PATCH request to localhost:3000/posts/id value of post being edited
# route is mapped to #update controller action (method) in PostsController class
