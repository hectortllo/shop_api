Rails.application.routes.draw do

  resources :product, only: [:index, :show, :create, :update]

  devise_for :users, skip: %i[registrations sessions passwords]
  devise_scope :user do
    post '/signup', to: 'registrations#create' # create a new user 
    post '/login', to: 'sessions#create' # create the token for log in
    delete '/logout', to: 'sessions#destroy' #destroy the token and log out
  end
end
