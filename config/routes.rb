Compapp::Application.routes.draw do
  resources :votes


  resources :entries do
    member{ post :vote }
  end

  resources :categories


  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end