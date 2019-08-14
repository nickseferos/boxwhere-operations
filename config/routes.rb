Rails.application.routes.draw do
  resources :voyages
  resources :bays
  resources :vessels
  resources :steamship_lines
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
