Rails.application.routes.draw do
  resources :tbl_services
  resources :tbl_genders
  resources :tbl_patients
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
