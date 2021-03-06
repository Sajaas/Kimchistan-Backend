Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      mount_devise_token_auth_for 'User', at: 'auth', skip: [:omniauth_callbacks]
      resources :products, only: [:index]
      resources :restaurants, only: [:index]
    end
  end
end
