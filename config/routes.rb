Rails.application.routes.draw do
  get '/login', to: 'sessions#new', as: :login
  get '/logout', to: 'sessions#destroy'
  match '/auth/:provider/callback', to: 'sessions#create', via: %i[get post]
  get '/auth/failure', to: 'sessions#failure'
  resources :noticia
  root 'noticia#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
