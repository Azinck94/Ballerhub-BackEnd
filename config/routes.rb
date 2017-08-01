# frozen_string_literal: true
Rails.application.routes.draw do
  resources :posts
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  get '/user-ballers/:id' => 'users#userballers'
  resources :users, only: [:index, :show]
  resources :examples, except: [:new, :edit]
  resources :ballers, only: [:index, :show, :destroy, :create, :update]
end
