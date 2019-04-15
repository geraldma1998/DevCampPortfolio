Rails.application.routes.draw do
  
  
  resources :portfolios
  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'
  
  root 'welcome#index'
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
