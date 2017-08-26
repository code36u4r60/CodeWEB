Rails.application.routes.draw do
  get 'person/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'person#index'

  
  resources :contacts
end
