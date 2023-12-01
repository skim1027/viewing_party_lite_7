Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "application#index"
  get '/register', to: 'users#new'
  post '/users/:user_id', to: 'viewing_party#create'

  resources :users, only: [:show, :create] do
    resources :movies, only: [:index, :show], on: :member do
      get 'viewing-party/new', only: :new
    end
    get 'discover', on: :member
  end

end
