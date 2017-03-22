Rails.application.routes.draw do
  resources :types
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  # get 'pokemons', to: 'pokemons#index'
  resources :pokemons
end
