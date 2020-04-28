Rails.application.routes.draw do
#this will display all the celebrities
  get "/celebrities", to: "celebrities#index", as: "celebrities"
  #this will create a celebrity
  post "/celebrities", to: "celebrities#create"
  #this will get a form to create a celebrity
  get "/celebrities/new", to: "celebrities#new", as: "new_celebrity"
  #this will show a celebrity matching with the id
  get "/celebrities/:id", to: "celebrities#show", as: "celebrity"
  #this will update the celebrity 
  put "/celebrities/:id", to: "celebrities#update"
  patch "/celebrities/:id", to: "celebrities#update"
  #this will get the form to update the celebrity
  get "/celebrities/:id/edit", to: "celebrities#edit", as: "edit_celebrities"
  delete "/celebrities/:id", to: "celebrities#destroy"


end

 
