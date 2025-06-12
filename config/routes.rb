Rails.application.routes.draw do
  root "products#index"
  resource :session
  resources :passwords, param: :token
  resource :unsubscribe, only: [ :show ]
  resources :products do
    resources :subscribers, only: [:create]
  end
end
