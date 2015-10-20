Rails.application.routes.draw do
  root 'puppies#index'
  resources :puppies
  get '/puppies/about', to: 'pins#about'
  get '/puppies/contact', to: 'pins#contact'
end
