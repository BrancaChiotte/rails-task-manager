Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # to all in one: resources: tasks

# CREATE (2 STEPS)
  # it creates the new task
  get 'tasks/new', to: 'tasks#new'
  # show the new task
  post 'tasks/', to: 'tasks#create'

# READ
   # list all the tasks
  get 'tasks', to: 'tasks#index'

    # see one task detail
  get 'tasks/:id', to: 'tasks#show', as: 'task'

# UPDATE
   # show edit form
  get 'tasks/:id/edit', to: 'tasks#edit'
  # update the task
  patch 'tasks/:id', to: 'tasks#update'

# DELET
  delete "tasks/:id", to: "tasks#destroy"
end
