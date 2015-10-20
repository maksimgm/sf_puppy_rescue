Rails.application.routes.draw do
  root 'puppies#index'
  get '/about', to: 'puppies#about'
  get '/contact', to: 'puppies#contact'
  resources :puppies
end
