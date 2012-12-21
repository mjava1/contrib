Compapp::Application.routes.draw do
  resources :entries
  match  "public"

  resources :categories


  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end