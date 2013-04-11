Disambiguation::Application.routes.draw do

#Authentication
    devise_for :users
    resources :users

    #Site Content
    resources :universes, :shallow => true do
    	resources :parts, :only => [:index, :create, :new]
        resources :characters do
        	resources :parts, :only => [:index, :create, :new]
        end
        resources :locations  do
        	resources :parts, :only => [:index, :create, :new]
        end 
        resources :storyarcs do
        	resources :parts, :only => [:index, :create, :new]
            resources :stories do
                resources :scenes do
                	resources :parts, :only => [:index, :create, :new]
                    resources :branches
                    resources :societies
                end
            end

        end
    end

resources :parts,:only => [:update, :destroy]

    #Homepages
    authenticated :user do
        root :to => 'universes#index'
    end
    root :to => "home#index"
end