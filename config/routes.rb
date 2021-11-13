Rails.application.routes.draw do
  resources :images do
    collection do
      post :compress
    end
    member do
      get :download
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
