Rails.application.routes.draw do
  
  resources :advents

  root "pages#index"
  resources :people

  devise_for :users
  get 'calendar/index'


  resources :events

end
