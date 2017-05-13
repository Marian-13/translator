Rails.application.routes.draw do
  get 'home/index'

  get    'log_in_to_google',             to: 'google_sessions#new'
  get    '/auth/google_oauth2/callback', to: 'google_sessions#create' # TODO Not RESTful action
  delete 'log_out_from_google',          to: 'google_sessions#destroy'

  resources :language_detections, only: [:index]

  resources :text_translations, only: [:index]

  resource :phrasebook, only: [:show]

  root to: 'home#index'
end
