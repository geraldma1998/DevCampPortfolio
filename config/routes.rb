Rails.application.routes.draw do
  
  
  resources :portfolios 
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  
  root 'pages#home'
	concern :commentable do
	  resources :comments
	end

  resources :blogs, concerns: :commentable 
  #do
  	#resources :comments
  #end
  #resources :comments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
