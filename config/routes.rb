Rails.application.routes.draw do
  resources :chapters
  root 'chapters#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
