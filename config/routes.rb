Disambiguation::Application.routes.draw do

#Authentication
    devise_for :users
    resources :users

    #Site Content
    resources :universes, :shallow => true do
        resources :characters do
        	resources :parts
        end
        resources :locations  do
        	resources :parts
        end 
        resources :storyarcs do
            resources :stories do
                resources :scenes do
                    resources :branches
                    resources :societies
                end
            end

        end
    end

    #Homepages
    authenticated :user do
        root :to => 'universes#index'
    end
    root :to => "home#index"
end