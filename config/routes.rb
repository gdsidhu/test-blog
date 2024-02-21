Rails.application.routes.draw do
  root 'articles#index'
  # get '/articles', to: 'articles#index'
  # get "/articles/:id", to: "articles#show",as: "article"
  resources :articles
  get "up" => "rails/health#show", as: :rails_health_check

end
