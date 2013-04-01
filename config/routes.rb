Disambiguation::Application.routes.draw do




#Authentication
    devise_for :users
    resources :users

    #Site Content
    resources :universes do
    	resources :characters
    	resources :locations
    	resources :storyarcs	
    end
    
	resources :storyarcs do
	  resources :stories
	end

    #Homepages
    authenticated :user do
		root :to => 'universes#index'
    end
    root :to => "home#index"
end