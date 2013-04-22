Disambiguation::Application.routes.draw do


#Authentication
    devise_for :users
    resources :users

    #Site Content
    resources :universes, :shallow => true do
        resources :stories          
        resources :parts, :only => [:index, :create, :new]
        resources :characters, :scenes do
            resources :npcs , :only => [:index, :create, :new]
            resources :parts, :only => [:index, :create, :new]
        end
        resources :locations do
            resources :parts, :only => [:index, :create, :new]
        end
    end
        
    resources :parts,:only => [:update, :destroy]
    resources :npcs,:only => [:update, :destroy]

    #Homepages
    authenticated :user do
        root :to => 'universes#index'
    end
    root :to => "home#index"
end