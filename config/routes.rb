Rails.application.routes.draw do
  
    root 'products#index' #arranca como pagina inicial el index

    get 'login', to: 'sessions#new'
    post 'login', to: 'sessions#create'
    delete 'logout', to: 'sessions#destroy'

    resources :users, only: [:new, :create]
    resources :products
  
	resources :users, only: [:new, :create] 
	resources :products #genera por debajo las rutas que estan arriba
  	
end
