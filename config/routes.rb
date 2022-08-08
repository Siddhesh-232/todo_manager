Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

    get "todos", to: "todos#index"
    get "todos/:id", to: "todos#show"
  end
