AngularjsPart2::Application.routes.draw do
  resources :users

  namespace :api do
    resources :articles
  end
  get '/articles/' => 'articles#index'
  root to: 'articles#index'
end
