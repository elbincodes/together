Rails.application.routes.draw do
  resources :players
  resources :teams

  get '/', to: 'teams#index'
  get '/search', to: 'players#search'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
