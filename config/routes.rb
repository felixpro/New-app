# frozen_string_literal: true

Rails.application.routes.draw do
  resources :orders, only: %i[index show create destroy]

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout' }, controllers: { registrations: "user_registrations" }

  resources :products do
    resources :comments
  end
  resources :users

    resources :products
    get 'simple_pages/about'
    get 'simple_pages/contact'
    get 'config/root'
    get 'simple_pages/index'
    get 'simple_pages/landing_page'

    root 'simple_pages#index'

    post 'simple_pages/thank_you'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
