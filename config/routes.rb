Rails.application.routes.draw do
  

  resources :people

  devise_for :users
  get 'calendar/index'

  root :to => "pages#index"
  resources :events

end
