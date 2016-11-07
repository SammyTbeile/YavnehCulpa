Rails.application.routes.draw do
  resources :departments
  resources :courses
  root  'department#index'
end
