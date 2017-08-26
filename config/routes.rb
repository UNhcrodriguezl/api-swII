Rails.application.routes.draw do
  resources :admins
  resources :users
  resources :audiobooks
  resources :journals
  resources :rooms
  resources :authors
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
