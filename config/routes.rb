Rails.application.routes.draw do
  resources :noticia
  root 'noticia#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
