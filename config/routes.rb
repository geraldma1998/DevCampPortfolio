Rails.application.routes.draw do
  
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' } 
  resources :portfolios, except: [:show]
  get 'angular-items', to: 'portfolios#angular', as: 'angular_items'
  get 'portfolio/:id', to: 'portfolios#show', as: 'postolio_show'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  
  root 'pages#home'
	concern :commentable do
	  resources :comments
	end

  resources :blogs do
    member do
      post :toggle_status
    end
  end
  #do
  	#resources :comments
  #end
  #resources :comments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
