Rails.application.routes.draw do
  resources :ql_tvs
  get 'home/top'
  get 'home/about'
  get 'home/quanlySV'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
  # root "articles#index"
end
