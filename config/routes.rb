Rails.application.routes.draw do
  
  root 'static_tasks#home'

  get '/about', to: 'static_tasks#about'
  resources :tasks
end
