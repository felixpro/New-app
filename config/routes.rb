# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout' }
  resources :products do
    resources :comments
  end

    resources :products
    
  get 'simple_pages/about'
  get 'simple_pages/contact'
  get 'config/root'
  get 'simple_pages/index'
  get 'simple_pages/landing_page'

  root 'simple_pages#index'

  post 'simple_pages/thank_you'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :orders, only: %i[index show create destroy]
end
