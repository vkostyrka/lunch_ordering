Rails.application.routes.draw do
  devise_for :users,
    path_names: { sign_in: 'login', sign_out: 'logout' }
  root to: 'users#index'
  resources :users, only: %i[edit update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
