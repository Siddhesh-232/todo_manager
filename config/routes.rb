Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
    post "todos/create", to: "todos#create"
    get "todos", to: "todos#index"
    get "todos/:id", to: "todos#show"

  end
