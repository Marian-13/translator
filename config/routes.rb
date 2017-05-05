Rails.application.routes.draw do
  get 'home/index'

  get    'log_in_to_google',             to: 'google_sessions#new'
  get    '/auth/google_oauth2/callback', to: 'google_sessions#create'
  delete 'log_out_from_google',          to: 'google_sessions#destroy'

  root to: 'home#index'
end
