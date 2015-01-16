Rails.application.routes.draw do
  root 'static_pages#index'

  get 'static_pages/about'

  get 'static_pages/contact'

  resources :presentations, only: [:index, :new,:create, :destroy]
end