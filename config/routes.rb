Rails.application.routes.draw do
  root to: 'cocktails#index'
  resources :cocktails, only: [:index, :show, :new, :create] #do |variable|
    #resources :reviews, only: [:new, :create]
  #end
end
