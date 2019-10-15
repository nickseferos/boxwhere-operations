Rails.application.routes.draw do
  resources :longshore_regs
  resources :plans
  resources :voyages
  resources :bays
  resources :vessels
  resources :steamship_lines
  devise_for :users

  get '/archives', to: 'dashboard#archive'

  root to: 'dashboard#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
