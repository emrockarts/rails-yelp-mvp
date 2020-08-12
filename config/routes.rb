Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
#Read
  get '/restaurants', to: 'restaurants#index', as: 'restaurants'
#Create
  get '/restaurants/new', to: 'restaurants#new', as: 'new_restaurant'

end
