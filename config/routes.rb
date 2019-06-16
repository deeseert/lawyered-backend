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
get "clients/:id/appointments", to: "appointments#index"
patch "lawyers/:id/availabilities/:id", to: "availabilities#book_availability"
patch "clients/:id/appointments/:id", to: "availabilities#make_appointment_available_again"
get "lawyers/:id/appointments", to: "appointments#index"
get "lawyers/:id/appointments/:id", to: "appointments#show"
end
