Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/videogames" => "videogame#index" 
  get "/users" => "users#index"
  get "/videogames/:id" => "videogame#show"
  patch "/videos/:id" => "videogam#update"
end
