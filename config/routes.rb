Rails.application.routes.draw do

  resources :product, only: [:index, :show, :create, :update]
  get 'candies', to: 'product#index_candies'
  get 'food', to: 'product#index_food'

  resources :orders, only: [:index, :show, :create]
  get 'orders/:email', to: 'orders#index_by_user'

  resources :type_product, only: [:index, :show, :create, :update]
  resources :presentation_product, only: [:index, :show, :create, :update]

  devise_for :users, skip: %i[registrations sessions passwords]
  devise_scope :user do
    post '/signup', to: 'registrations#create' # create a new user 
    post '/login', to: 'sessions#create' # create the token for log in
    delete '/logout', to: 'sessions#destroy' #destroy the token and log out
  end
end
