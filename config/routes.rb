Rails.application.routes.draw do
  get 'shopping_list/show'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'foods#index'

  resources :foods, except: [:update]
  resources :recipes, except: [:update] do 
    resources :recipe_foods
  end

  get 'public_recipes', to: 'recipes#public'
end
