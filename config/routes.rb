Rails.application.routes.draw do
  

  devise_for :users
  get 'calendar/index'

  root :to => "pages#index"
  resources :events

end
