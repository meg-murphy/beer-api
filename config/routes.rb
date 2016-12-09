Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/beer", to: "beers#index"
  get "/beer/:id", to: "beers#show"

  post "/beer", to: "beer#create"

end
