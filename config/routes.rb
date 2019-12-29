Rails.application.routes.draw do

  get 'password_resets/new'
  get 'password_resets/edit'
  resources :users
  get '/root', to:'static_pages_controller#home'
  get  '/help',    to: 'static_pages_controller#help'
  get  '/about',   to: 'static_pages_controller#about'
  get  '/contact', to: 'static_pages_controller#contact'
  get  '/signup',  to: 'users#new'
  root 'static_pages_controller#home'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit,:update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
