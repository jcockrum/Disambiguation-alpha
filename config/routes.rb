Disambiguation::Application.routes.draw do

#Authentication
    devise_for :users
    resources :users

#Site Content
    resources :universes, :shallow => true do
        resources :characters
        resources :locations do
            resources :events do
                resources :societies
                resources :physics
            end
        end
        resources :storyarcs do
            resources :scenes do
            	resources :branches
            end
        end
    end

#Homepages
    authenticated :user do
        root :to => 'universes#index'
    end
    root :to => "home#index"
end