Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :players
      resources :users
      resources :drafts
      post '/auth', to: 'auth#create'
      post '/register', to: 'users#create'

    end
  end

end
