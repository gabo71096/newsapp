Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
  post '/auth/:provider/callback', to: 'sessions#create'
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/auth/failure', to: 'sessions#failure'
  resources :noticia
  root 'noticia#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
