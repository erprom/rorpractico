Rails.application.routes.draw do
  get 'principal/index'
  root 'principal#index'
  resources :users do
  	resources :animals
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
