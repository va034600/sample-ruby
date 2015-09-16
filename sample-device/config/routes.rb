Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  get 'home2/index'
#  root 'home#index'
end
