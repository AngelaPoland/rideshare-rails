Rails.application.routes.draw do
  root 'trips#index'

  resources :trips
  resources :drivers
  resources :passengers

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

#
# Prefix Verb   URI Pattern                    Controller#Action
#         trips GET    /trips(.:format)               trips#index
#               POST   /trips(.:format)               trips#create
#      new_trip GET    /trips/new(.:format)           trips#new
#     edit_trip GET    /trips/:id/edit(.:format)      trips#edit
#          trip GET    /trips/:id(.:format)           trips#show
#               PATCH  /trips/:id(.:format)           trips#update
#               PUT    /trips/:id(.:format)           trips#update
#               DELETE /trips/:id(.:format)           trips#destroy

#       drivers GET    /drivers(.:format)             drivers#index
#               POST   /drivers(.:format)             drivers#create
#    new_driver GET    /drivers/new(.:format)         drivers#new
#   edit_driver GET    /drivers/:id/edit(.:format)    drivers#edit
#        driver GET    /drivers/:id(.:format)         drivers#show
#               PATCH  /drivers/:id(.:format)         drivers#update
#               PUT    /drivers/:id(.:format)         drivers#update
#               DELETE /drivers/:id(.:format)         drivers#destroy

#    passengers GET    /passengers(.:format)          passengers#index
#               POST   /passengers(.:format)          passengers#create
# new_passenger GET    /passengers/new(.:format)      passengers#new
# edit_passenger GET    /passengers/:id/edit(.:format) passengers#edit
#     passenger GET    /passengers/:id(.:format)      passengers#show
#               PATCH  /passengers/:id(.:format)      passengers#update
#               PUT    /passengers/:id(.:format)      passengers#update
#               DELETE /passengers/:id(.:format)      passengers#destroy
#          root GET    /                              trips#index