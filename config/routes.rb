Rails.application.routes.draw do
resources :clients
resources :lawyers
resources :appointments
resources :availabilities
resources :tokens, only: [:create]
# this route allows me to sign in
post '/signin', to: 'clients#signin'
# this other route allows me to stay logged in
get '/validate', to: 'clients#validate'
get '/dashboard', to: 'clients#dashboard'
get "lawyers/:id/availabilities", to: "availabilities#index"
end
