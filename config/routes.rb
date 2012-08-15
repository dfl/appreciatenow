AppreciateNow::Application.routes.draw do
  resources :appreciations, :only => [:index, :show, :new, :create]
  resources :approvals, :only => [:index, :create]
   
  match "random", :to => "appreciations#random"
  match ":id", :to => "appreciations#show", :constraints => {:id => /\d+/}

  root :to => 'appreciations#random'
end
