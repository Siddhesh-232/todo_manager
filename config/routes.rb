Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

    # get "todos", to: "todos#index"
    # post "todos", to: "todos#create"
    # get "todos/:id", to: "todos#show"

    resources :todos
  end
