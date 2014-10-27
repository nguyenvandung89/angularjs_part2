AngularjsPart2::Application.routes.draw do
  namespace :api do
    resources :articles
  end
  get '/articles/' => 'articles#index'
  root to: 'articles#index'
end
