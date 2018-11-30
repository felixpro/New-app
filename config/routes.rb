Rails.application.routes.draw do
  resources :products
  get 'simple_pages/about'
  get 'simple_pages/contact'
  get 'config/root'
  get 'simple_pages/index'
  get 'simple_pages/landing_page'


  root 'simple_pages#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :orders, only: [:index, :show, :create, :destroy]

end
