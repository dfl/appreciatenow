AppreciateNow::Application.routes.draw do
  resources :appreciations, :only => [:index, :show, :new, :create]
  resources :approvals, :only => [:index, :update, :destroy]
   
  match "random", :to => "appreciations#random"
  match "admin", :to => "approvals#index"
  match ":id", :to => "appreciations#show", :constraints => {:id => /\d+/}

  root :to => 'appreciations#random'
end
