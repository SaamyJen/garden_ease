Rails.application.routes.draw do


  devise_for :users
  root to: "pages#home", as: :home
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  get "about", to: "pages#about", as: :about
  # get "sign_out", to: "/users/sign_out"
  # Defines the root path route ("/")
  # root "posts#index"

  get 'plants/image_generator'


  get "benefits/new", to: "benefits#new", as: :benefits
  post "benefits", to: "benefits#create", as: :selected_benefits

  # projects
  resources :projects, only: [:my_saved_project]

  resources :projects do
    resources :progresses, only: [:create, :new]
    get "spaces/new", to: "spaces#new", as: :new_space
    post "spaces", to: "spaces#create"
    get "location/new", to: "location#new", as: :new_location
    post "location", to: "location#create"
    post "projects", to: "projects#generate", as: :generate
    get "projects", to: "projects#pdf", as: :pdf
    get "projects/show", to: "projects#show", as: :results
    get "my_saved_projects", to: "projects#my_saved_projects", as: :my_saved_projects
  end

  resources :progresses, only: [:destroy]
end
