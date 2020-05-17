Rails.application.routes.draw do

  get 'emr/index'

  resources :patients

  resources :patient do
    resources :notes
  end

  root 'emr#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
