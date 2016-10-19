Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "user_registrations" }

  resources :products do
  resources :comments
  end

  resources :orders, only: [:index, :show, :create, :destroy]
  resources :users
  # get 'static_pages/about'
  # get 'static_pages/contact'



  root 'static_pages#landing_page'
  get 'static_pages/index'
  get 'about' => 'static_pages#about'
  get 'static_pages/products'
  get 'contact' => 'static_pages#contact'

  post 'static_pages/thank_you'

  get 'payments/create'

  post 'payments/create'

  mount ActionCable.server => '/cable'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

