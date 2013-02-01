DbMigration::Application.routes.draw do
  get "dashboard/index"

  resources :artists do
    member do
      get "photo"
    end
  end

  resources :songs
  resources :bands
  resources :recordings

  root to: "dashboard#index"
end
