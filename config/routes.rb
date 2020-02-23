Rails.application.routes.draw do
  get 'messages/create'
  get 'messages/destroy'
  resources :admin_users
  resources :users do
    resources :messages
  end
  root "users#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
