Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new' 
  get 'users/edit'
  get 'users/show'

	root 'sessions#new'

	resources :item
	resources :categories
	get "/item/busca " => "item#busca", as: :busca_item
   

	resources :users
    get    'sign_in'   => 'sessions#new'
    post   'sign_in'   => 'sessions#create'
    delete 'sign_out'  => 'sessions#destroy'

end

