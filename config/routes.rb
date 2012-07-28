AppreciateNow::Application.routes.draw do
  resources :appreciations, :only => [:index, :show, :new, :create]
   
  match "random", :to => "appreciations#random"
  match ":id", :to => "appreciations#show"

  root :to => 'appreciations#random'
end
