# config/routes.rb
Rails.application.routes.draw do
  root 'contact_forms#new'
  get 'contact_forms/new'
  post 'contact_forms/create'
end
