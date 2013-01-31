DbMigration::Application.routes.draw do
  get "dashboard/index"

  resources :artists
  resources :songs
  resources :bands
  resources :recordings

  root to: "dashboard#index"
end
