Rails.application.routes.draw do
  root "home#index"
  get "up" => "rails/health#show", as: :rails_health_check
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
end
