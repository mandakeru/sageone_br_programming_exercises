Rails.application.routes.draw do
  resources :products do 
    collection { post :import }
  end
  root 'home#index'

  
end
