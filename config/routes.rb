Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to:'application#top'
  get "/login",to: 'application#login'
  get "/signup",to: 'application#signup'
  get "/recipe",to: 'application#recipe'
  
end
