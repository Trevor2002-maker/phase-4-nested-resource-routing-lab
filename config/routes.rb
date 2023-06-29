Rails.application.routes.draw do
  resources :users do
    resources :items
  end

  get '/users/:user_id/items', to: 'items#index'
  post '/users/:user_id/items', to: 'items#create'
end