Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # Session routes
  get 'login',  to: 'sessions#new', as: :login
  get 'logout', to: 'sessions#destroy', as: :logout
  resources :sessions, only: [:create]

  # Contact routes
  resources :contacts do
    get 'delete', on: :member
  end

  # Avatar routes
  get "avatar/:size/:background/:text" => Dragonfly.app.endpoint { |params, app|
    app.generate(:initial_avatar, URI.unescape(params[:text]), { size: params[:size], background_color: params[:background] })
  }, as: :avatar

  # Root path
  root to: 'contacts#index'
end
