Rails.application.routes.draw do
  resources :urls, only: %i[index show new create]

  get "/:id", to: "home#redirect"
  get "/", to: "urls#new"
end
