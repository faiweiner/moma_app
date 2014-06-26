Rails.application.routes.draw do
  root to: 'pages#welcome'
  resources :artists
  resources :works
end
