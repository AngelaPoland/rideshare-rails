Rails.application.routes.draw do
  root 'trips#index'
  # get '/passengers/:id', to: 'passengers#show', as: 'passenger'

  resources :trips, except: [:new, :create, :delete]
  # resources :drivers
  # resources :passengers

  resources :drivers, except: [:destroy] do
    post('deactivated')
  end

  resources :passengers, except: [:destroy] do
    post('deactivated')
    resources :trips, only: [:new, :create]
  end
#chris in class also added :new to the above


  post('/drivers/:driver_id/deactivated', {to: 'drivers#deactivated', as: 'deactivated_driver'})
  # post('/passengers/:passenger_id/deactivated', {to: 'passengers#deactivated', as: 'deactivated_passenger'})



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end





# Prefix Verb   URI Pattern                                     Controller#Action
#                 root GET    /                                               trips#index
#                trips GET    /trips(.:format)                                trips#index
#             new_trip GET    /trips/new(.:format)                            trips#new
#            edit_trip GET    /trips/:id/edit(.:format)                       trips#edit
#                 trip GET    /trips/:id(.:format)                            trips#show
#                      PATCH  /trips/:id(.:format)                            trips#update
#                      PUT    /trips/:id(.:format)                            trips#update
#                      DELETE /trips/:id(.:format)                            trips#destroy
#   driver_deactivated POST   /drivers/:driver_id/deactivated(.:format)       drivers#deactivated
#              drivers GET    /drivers(.:format)                              drivers#index
#                      POST   /drivers(.:format)                              drivers#create
#           new_driver GET    /drivers/new(.:format)                          drivers#new
#          edit_driver GET    /drivers/:id/edit(.:format)                     drivers#edit
#               driver GET    /drivers/:id(.:format)                          drivers#show
#                      PATCH  /drivers/:id(.:format)                          drivers#update
#                      PUT    /drivers/:id(.:format)                          drivers#update
#                      DELETE /drivers/:id(.:format)                          drivers#destroy
# passenger_deactivated POST   /passengers/:passenger_id/deactivated(.:format) passengers#deactivated
#      passenger_trips POST   /passengers/:passenger_id/trips(.:format)       trips#create
#           passengers GET    /passengers(.:format)                           passengers#index
#                      POST   /passengers(.:format)                           passengers#create
#        new_passenger GET    /passengers/new(.:format)                       passengers#new
#       edit_passenger GET    /passengers/:id/edit(.:format)                  passengers#edit
#            passenger GET    /passengers/:id(.:format)                       passengers#show
#                      PATCH  /passengers/:id(.:format)                       passengers#update
#                      PUT    /passengers/:id(.:format)                       passengers#update
#                      DELETE /passengers/:id(.:format)                       passengers#destroy
