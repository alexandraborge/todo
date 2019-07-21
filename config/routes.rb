Rails.application.routes.draw do
  root 'items#index'
  get '/new_item/:day', to: 'items#new', as: 'new_item'
  post '/create', to: 'items#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
