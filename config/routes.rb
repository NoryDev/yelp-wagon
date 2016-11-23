Rails.application.routes.draw do
  root "restaurants#index"
  resources :restaurants do
    collection do
      get "top", to: "restaurants#top"
    end

    member do
      get "chef", to: "restaurants#chef"
    end

    resources :reviews, only: [:new, :create]
  end

  namespace :admin do
    resources :restaurants, only: [:index]
  end

end
