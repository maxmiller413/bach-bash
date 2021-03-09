Rails.application.routes.draw do
  
  resources :place_collections
  #resources :collections
  # resources :places
  #resources :parties
  #resources :users

  ################## SESSIONS ############################################
  get "/login", to: "sessions#login", as: "login" 

#logs user in
  post "/handle_login", to: 'sessions#handle_login'
  
  #create user
  get "/signup", to: "sessions#new", as: "create_account"
  post "/signup", to: 'sessions#create'


  ################## USERS ###############################################
 
  #main page
  get "/main", to: "users#index", as: "main"
  get "/main/:id", to: "users#show", as: "user_profile"
  

  ################## PARTY ###############################################
  #new party form
  get "/parties/new", to: "parties#new", as: "new_party"
  # create party
  post "/parties", to: "parties#create"

  get "/parties/:id", to: "parties#show", as: "party"

  ################# COLLECTION ###########################################
  #new collection
  get "/collections", to: "collections#index", as: "collections"
  get "/collections/:id", to: "collections#show", as: "collection"
  get "/invite", to: "collections#invite", as: "invite"
  
  ################# PLACE ################################################
  get "/places", to: "places#index", as: "places"
  get '/places/new', to: 'places#new', as: 'new_place'

  
  

 



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
