Rails.application.routes.draw do
  devise_for :users,
    path_names: { sign_in: 'login', sign_out: 'logout' }
  root to: 'users#index'
  resources :users, only: %i[edit update]
  resources :orders, only: %i[create]
  resources :lunch_admin, only: %i[index]
  resources :menu_items, only: %i[create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
