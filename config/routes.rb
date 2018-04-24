Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create, :edit]

  #form_for uses a patch route instead of a put route (like in form_tag):
  #put has the ability to update the entire object
  #patch updates the elements that were changed; patch requires less overhead
  #however, the two methods are used interchangeable quite often.

  #you can add the following, or add update to the resources above for the same result
  patch 'posts/:id', to: 'posts#update'
end
