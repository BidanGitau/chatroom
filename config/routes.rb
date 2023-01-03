Rails.application.routes.draw do
 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "chatroom#index"
<<<<<<< HEAD
  get "login" ,to:"sessions#new"
  
=======
  get "login" ,to: "sessions#new"
>>>>>>> main
end
