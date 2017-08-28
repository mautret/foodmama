Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # get 'profile', to: 'users#show', as: 'profile'

  namespace :api, defaults: { format: :json } do
  # namespace :api do
    namespace :v1 do
      get 'suggest', to: 'searches#suggest'
      get 'search', to: 'searches#search'
      get 'ban', to: 'searches#ban_ingredient'
    end
  end

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get 'suggest', to: 'pages#suggest'
  # get 'search', to: 'pages#search'

  resources :recipes, only: [:show]  do
    resources :doses, only: [:new, :create, :edit, :update, :destroy]
    member do
      put "like", to: "recipes#upvote"
      put "dislike", to: "recipes#downvote"
    end
  end

  resources :ingredients, only: [:index, :show] do
    member do
      put "like", to: "ingredients#upvote"
      put "dislike", to: "ingredients#downvote"
    end
  end

  resources :users, only: [:show] do
    resources :past_recommendations, only: [:create, :destroy]
  end
end






