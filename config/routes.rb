Rails.application.routes.draw do
  get 'comments/create'

  ActiveAdmin.routes(self)
	root "posts#index"
  resources :posts do
  	resources :comments
  end

  devise_for :users
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
