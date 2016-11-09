Rails.application.routes.draw do
  resource :chirps
  get 'chirps/:id'=> "chirps#show"

# rails routes para ver las rutas en consola

  root to: "static_pages#index"
  resource :users
  get "users/:id"=> 'users#show'
  get "sessions/new" => "sessions#new"
  post "sessions/create" => "sessions#create"
  delete "sessions/delete" => "sessions#delete"

end
