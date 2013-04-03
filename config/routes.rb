Disambiguation::Application.routes.draw do

  resources :events


#Authentication
    devise_for :users
    resources :users

    #Site Content
    resources :universes, :shallow => true do
        resources :characters
        resources :locations
        resources :storyarcs do
            resources :stories
        end
    end

    #Homepages
    authenticated :user do
        root :to => 'universes#index'
    end
    root :to => "home#index"
end