Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create]
      post '/user', to: "users#update"
      post '/user/delete', to: "users#delete"
      post '/login', to: "auth#create"
      get '/currentuser', to: "auth#show"
      post '/search', to: "cars#search"
      post '/cars', to: "cars#create"
      get '/cars', to: "cars#index"
      get '/car/:id', to: "cars#show"
      post '/car/update', to: "cars#update"
      post '/car', to: "cars#delete"
      get '/pendingreservations', to: "pending_reservations#index"
      post '/pendingreservations', to: "pending_reservations#create"
      get '/reservations', to: "reservations#index"
      post '/reservations', to: "reservations#create"
      post '/pendingreservation', to: 'pending_reservations#delete'
    end
  end
end
