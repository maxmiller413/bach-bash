Rails.application.routes.draw do
  
  resources :place_collections
  #resources :collections
  # resources :places
  #resources :parties
  #resources :users

  #login page
  get "/login", to: "users#login", as: "login" 

  #logs user in
  post "/handle_login", to: 'users#handle_login'


  #create account form
  get "/signup", to: "users#new", as: "new_user_form"

  #create 
  post "/users", to: 'users#create'

 #party index
  get "/parties", to: "parties#index", as: "parties"

  #new party form
  get "/parties/new", to: "parties#new", as: "new_party"
  
  # create party
  post "/parties", to: "parties#create"

  #new collection
  get "/collections", to: "collections#index", as: "collections"
  get "/collections/:id", to: "collections#show", as: "collection"

  get "/places", to: "places#index", as: "places"

  get "/invite", to: "collections#invite", as: "invite"
  

 



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
