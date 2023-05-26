Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'lists', to: 'lists#index'
  get 'lists/new', to: 'lists#new'
  get 'lists/:id', to: 'lists#show', as: 'list'
  post 'lists', to: 'lists#create'
  get 'lists/:id/bookmarks/new', to: 'bookmarks#new', as: 'new_bookmark'
  post 'lists/:id/bookmarks', to: 'bookmarks#create', as: 'list_bookmarks'
  resources :bookmarks, only: [:destroy]
end

# A user can see all the lists
# GET "lists"
# A user can see the details of a given list and its name
# GET "lists/42"
# A user can create a new list
# GET "lists/new"
# POST "lists"
