Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :events
  resources :items
  resources :sessions
  resources :users
  resources :user_items
  get '/current_user', to: 'current_user#index'
end

  # namespace :api do
  #   namespace :v1 do
  #     resources :users, only: [:create]
  #     post '/login', to 'auth#create'
  #     get '/profile', to 'users#profile'
  #   end
  # end

