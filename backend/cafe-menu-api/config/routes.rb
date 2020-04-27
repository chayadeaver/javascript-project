Rails.application.routes.draw do
  resources :carts do
    resources :order_items
  end
  # devise_for :users
  root to: "home#index"
  # resources :order_items
  resources :orders do
    resources :order_items
  end
  # resources :items
  resources :menus do
    resources :items
  end

  resources :items do
    resources :order_items
  end

  devise_for :users,
            path: '',
            path_names: {
              sign_in: 'login',
              sign_out: 'logout',
              registration: 'signup'
            },
            controllers: {
              sessions: 'sessions',
              registrations: 'registrations'
            }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
