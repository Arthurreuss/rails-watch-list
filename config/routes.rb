Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :bookmarks, only: %i[destroy]
  resources :lists, only: %i[index show new create destroy] do
    resources :bookmarks, only: %i[index new create]
  end
  # resources :movies do
  #   resources :bookmarks
  # end
end
