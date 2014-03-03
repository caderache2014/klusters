Klusters::Application.routes.draw do
  devise_for :users
  
  resources :documents
  resources :klusters
  
  root 'klusters#index'
  get '/my_klusters', to: 'klusters#my_klusters', as: 'my_klusters'
end
