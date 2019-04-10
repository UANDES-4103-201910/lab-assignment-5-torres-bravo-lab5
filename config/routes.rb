Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/events/upcoming_events', to: 'events#upcoming_events'
  resources :users
  resources :tickets
  resources :events
  resources :ticket_types do
  	  resources :tickets
  end
  resources :events_venues 
  resources :events
  resources :ticket_zones
  resources :orders

end
