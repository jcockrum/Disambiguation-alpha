Disambiguation::Application.routes.draw do

#Authentication
    devise_for :users
    resources :users

    #Site Content
    resources :universes

    #Homepages
    authenticated :user do
		root :to => 'universes#index'
    end
	##match 'dashboard' => 'universe#index', :as => :dashboard 
    root :to => "home#index"
end