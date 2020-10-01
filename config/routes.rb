
Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/test', to: 'application#test'
  namespace :api do
    namespace :v1 do
      resources :players, only: [:index, :create]
      resources :games, only: [:index, :create]
    end
  end
end
