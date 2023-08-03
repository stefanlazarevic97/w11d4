Rails.application.routes.draw do
    namespace :api, defaults: { format: :json } do
        get '/pokemon/types', to: 'pokemon#types', as: :pokemon_types
        
        resources :items, only: [:update, :destroy]
      
        resources :pokemon, only: [:index, :create, :show, :update] do
            resources :items, only: [:index, :create]
        end
    end
end
