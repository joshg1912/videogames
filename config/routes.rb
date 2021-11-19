Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/videogames" => "videogame#index" 
  get "/users" => "users#index"
  get "/videogames/:id" => "videogame#show"
  post "/videogames" => "videogame#create"
  patch "/videogames/:id" => "videogame#update"
  get "/myvideogames/:id" => "videogame#showall"
end
