# frozen_string_literal: true
Rails.application.routes.draw do
  resources :teams
  resources :posts
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:create, :index, :show]
  resources :examples, except: [:new, :edit]
  resources :ballers, only: [:index, :create, :show, :destroy, :update]
end
