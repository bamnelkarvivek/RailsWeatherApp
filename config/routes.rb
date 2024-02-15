Rails.application.routes.draw do

  get "up" => "rails/health#show", as: :rails_health_check
  #get "weather/index"
  # Defines the root path route ("/")
  root "weather#index"
end
