Rails.application.routes.draw do
  resources :games

  get '/upcoming' => 'games#upcoming', as: :upcoming
  get '/pc' => 'games#pc', as: :pc
  get '/2001' => 'games#twok1', as: :twok1
  get '/ea' => 'games#ea', as: :ea

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
