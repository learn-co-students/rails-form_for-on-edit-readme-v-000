Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create, :edit, :update]

  # NOTE : Using "Form for" requires patch over put for route -> Patch updates changed elements || Put updates entire object
  # The below is the "Form for" specific route -> it is replaced with the "update" route addition above
  # patch 'posts/:id', to: 'posts#update'

end
