Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :products
  resources :products do
    resources :comments
  end

  get 'about' => 'static_pages#about'
  get 'contact' => 'static_pages#contact'

  root 'static_pages#landing_page'

  post 'static_pages/thank_you'

  get 'static_pages/about'
  get 'static_pages/products'

  get 'static_pages/contact'

  get 'static_pages/index'

  # resources :orders, only: [:index, :show, :create, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
