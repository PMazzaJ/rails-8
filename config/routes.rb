Rails.application.routes.draw do
  root "products#index"
  resource :session
  resources :passwords, param: :token
  resources :products
end
