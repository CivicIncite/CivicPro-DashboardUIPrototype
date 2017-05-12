Rails.application.routes.draw do
  resources :lobbyists
  root 'records#index'
  resources :records
  get '/archives', to: 'records#legislative_archives'
  get '/preferences', to: 'records#preferences'
  get '/code-amendments', to: 'records#code_amendments'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
