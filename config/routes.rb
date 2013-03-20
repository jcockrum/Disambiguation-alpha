Disambiguation::Application.routes.draw do


  resources :universes


#Authentication & Homepages  
  devise_for :users
  resources :users
  
  authenticated :user do
    root :to => 'home#dashboard'
  end
  root :to => "home#index"
end