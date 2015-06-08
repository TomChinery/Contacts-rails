Rails.application.routes.draw do
  get 'sessions/create'

  get 'sessions/delete'

  resource :home, only: [:index]

  root to: "home#index"
end
