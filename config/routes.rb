Rails.application.routes.draw do
  root 'presentations#index'

  get 'static_pages/about'

  get 'static_pages/contact'

  resources :presentations, only: [:index, :show, :new,:create, :destroy]
end