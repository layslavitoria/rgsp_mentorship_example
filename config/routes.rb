Rails.application.routes.draw do
  root "mentors#index"
  resources :mentors #cria as rotas utilizando o padrão REST de recurso
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
