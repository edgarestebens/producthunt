Rails.application.routes.draw do
  resources :users, only: [:new, :create]
	#get '/products', to: 'products#index'
	#get '/products/new', to: 'products#new', as: 'new_product'
	#post '/products', to: 'products#create'
	#get '/products/:id', to: 'products#show', as:'product'
	#get '/products/:id/edit', to: 'products#edit', as: 'edit_product'
	#patch '/products/:id', to: 'products#update'
	#delete '/products/:id', to: 'products#destroy'
	 
	resources :products #genera por debajo las rutas que estan arriba
  	
  	root 'products#index' #arranca como pagina inicial el index

  	#resources :products, only: [:index] solo mostraria la ruta de index
  	#resources :products, only: [:index, :create] mostraria index y create

end
