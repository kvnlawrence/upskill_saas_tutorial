Rails.application.routes.draw do
 root to: 'pages#home'
 get 'about', to: 'pages#about'
 resources :contacts
  # ^This auto generated many lines when you check 'rails routes' in terminal.
  # including /new_contact, edit_contact, and many more. 
 end

