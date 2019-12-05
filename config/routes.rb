Rails.application.routes.draw do
  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/login'
  # get 'sessions/welcome'
 
  resources :likes
  resources :comments
  resources :posts
  resources :users, only: [:new, :create]
  get 'login', to: 'sessions#new', as: 'signup'
  post 'login', to: 'sessions#create'
  #We can clean up welcome later, keeping it for now as a way to debug/test
  get 'welcome', to: 'sessions#welcome'
  get 'home', to: 'home#index'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  post 'logout', to: 'sessions#destroy'
  get 'search', to: 'posts#search'
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
