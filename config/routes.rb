Rails.application.routes.draw do
  resources :students
  get 'usuarios/new'
  #get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root :to => "welcome#index"
  resources :usuarios
  root :to => "welcome#index"
  
end
