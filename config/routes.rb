AngularjsPart2::Application.routes.draw do

  namespace :api do
    resources :articles
    resources :users
  end
  get '/articles/' => 'articles#index'
  get '/users/' => 'users#index'
  root to: 'articles#index'
end
