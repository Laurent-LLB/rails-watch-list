Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :bookmarks, :lists

  resources :lists do
    resources :bookmarks, only: [:new, :create, :destroy]
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
