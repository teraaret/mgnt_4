Rails.application.routes.draw do
    resources :genders
    resources :families
    resources :papers
    resources :factions
    resources :characters
    resources :countries
    resources :races
    resources :posts
    root 'home#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
