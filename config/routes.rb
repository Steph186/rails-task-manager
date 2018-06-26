Rails.application.routes.draw do

  # List all --> R
  get 'tasks', to: 'tasks#index'

  # create a new --> C
  get 'tasks/new', to: 'tasks#new', as: :new
  post 'tasks', to: 'tasks#create'

  # show 1 --> R
  get 'tasks/:id', to: 'tasks#show', as: :task

  get "tasks/:id/edit", to: "tasks#edit", as: :edit
  patch "tasks/:id", to: "tasks#update"

  get "tasks/:id/done", to: "tasks#done", as: :done
  get "tasks/:id/delete", to: "tasks#delete", as: :delete
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
