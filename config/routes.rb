Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/health", to: "application#health"
  mount Karafka::Web::App, at: "/jobs"
end
