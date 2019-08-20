Rails.application.routes.draw do
  resources :longshore_regs
  get 'plan/index'
  get 'plan/update'
  get 'plan/show'
  get 'plan/create'
  get 'dashboard/index'
  resources :voyages
  resources :bays
  resources :vessels
  resources :steamship_lines
  devise_for :users

  root to: 'dashboard#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
