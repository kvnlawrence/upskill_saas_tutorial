=begin
Main file for listing out different urls/paths a customer can go to.
Points to file in folders to the left. pages#about -> pages/about.html.erb
=end

Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :users do
    resource :profile
  end
  get 'about', to: 'pages#about'
  resources :contacts, only: :create
  get 'contact-us', to: 'contacts#new', as: 'new_contact'
  get 'myhubspot', to: 'pages#myhubspot'
end

# Get requests are the most common requests, sent anytime you go to x.com 
 