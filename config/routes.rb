Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "restaurants#index"
  resources :restaurants do 
    resources :reviews, only: [ :new, :create, :show ]
  end
  resources :reviews, only: [  :edit, :update, :destroy ]
end
