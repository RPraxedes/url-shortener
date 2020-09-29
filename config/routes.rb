Rails.application.routes.draw do
  resources :urls, only: %i[index show new create destroy]

  get "/:id", to: "home#redirect"
  get "/", to: "urls#new"
end
