Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
 
  resources :lists, only: [:index, :show, :create, :new] do
    resources :bookmarks, only: [:create]
  end 
  resources :bookmarks, only: [:destroy]
end
