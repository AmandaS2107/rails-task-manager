Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "tasks", to: "tasks#index", as: :tasks

  # CREATE
  get "tasks/new", to: "tasks#new", as: :new
  post "tasks", to: "tasks#create"
  # SHOW
  get "tasks/:id", to: "tasks#show", as: :task

  #UPDATE
  get "task/:id/edit", to: "tasks#edit", as: :edit
  patch "tasks/:id", to: "tasks#update"

  #DELETE
  delete "tasks/:id", to: "tasks#destroy", as: :task_destroy

end
