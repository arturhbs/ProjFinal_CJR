Rails.application.routes.draw do
	root "item#index"
	resources :item
	resources :categories
end

