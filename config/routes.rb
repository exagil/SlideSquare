Rails.application.routes.draw do
  root 'presentations#index'

  get 'static_pages/about'

  get 'static_pages/contact'

  resources :presentations do
    resources :comments
  end
end