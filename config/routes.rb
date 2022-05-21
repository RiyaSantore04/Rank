Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root "users#index"

resources :users do
  # member do
  #   post :active
  # end

  
  get '/users/:activestatus' => 'users#index'
end

end
