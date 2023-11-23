Rails.application.routes.draw do
  resources :restaurants
  resources :restaurants do
    resources :reviews

    collection do
      get :top
    end

    member do
      get :chef
    end
  end
end
