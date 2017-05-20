Rails.application.routes.draw do
  resources :lobbyists
  root 'records#dashboard'
  resources :records
  get '/archives', to: 'records#archives'
  get '/preferences', to: 'records#preferences'
  get '/admin', to: 'records#admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
