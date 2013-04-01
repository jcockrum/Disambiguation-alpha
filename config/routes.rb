Disambiguation::Application.routes.draw do

  resources :locations


#Authentication
    devise_for :users
    resources :users

    #Site Content
    resources :universes do
    	resources :characters	
    end

    #Homepages
    authenticated :user do
		root :to => 'universes#index'
    end
    root :to => "home#index"
end