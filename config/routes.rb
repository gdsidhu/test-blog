Rails.application.routes.draw do
  devise_for :users
  root 'articles#index'
  # get '/articles', to: 'articles#index'
  # get "/articles/:id", to: "articles#show",as: "article"
  resources :articles do
    resources :comments
  end
  get "up" => "rails/health#show", as: :rails_health_check

end
