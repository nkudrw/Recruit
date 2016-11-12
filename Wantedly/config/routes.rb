Rails.application.routes.draw do

  resources :skills
  devise_for :users

  root 'skills#index'
end
