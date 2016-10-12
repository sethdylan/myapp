Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "user_registrations" }

  resources :products do
  resources :comments


  resources :orders, only: [:index, :show, :create, :destroy]
  end
  resources :users

  get 'payments/create'

  get 'about' => 'static_pages#about'
  get 'contact' => 'static_pages#contact'

  root 'static_pages#landing_page'


  get 'static_pages/about'

  get 'static_pages/products'

  get 'static_pages/contact'

  get 'static_pages/index'

  post 'static_pages/thank_you'

  post 'payments/create'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
