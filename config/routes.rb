Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "restaurants#index"
  resources :restaurants do
    collection do
      get :index, :show
    end
    resources :reviews, only: %i[new create]
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
