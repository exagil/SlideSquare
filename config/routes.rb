Rails.application.routes.draw do
  get 'slides/index'

  get 'slides/new'

  root 'static_pages#index'

  get 'static_pages/about'

  get 'static_pages/contact'
end