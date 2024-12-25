Rails.application.routes.draw do
  devise_for :users
  root "home#index"
  get "up" => "rails/health#show", as: :rails_health_check
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  get 'member/:id', to: 'members#show', as: :member
end
