Rails.application.routes.draw do
  root "mentors#index"
  get "/mentors", to: "mentors#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
