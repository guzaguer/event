Rails.application.routes.draw do
  resources :line_items
  resources :carts
  resources :productos
  resources :products
  root 'welcome#index'
  devise_for :users
  get 'contenido/nosotros'

  get 'contenido/importante'

  get 'contenido/eventos'

  get 'welcome/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
