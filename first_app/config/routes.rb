Rails.application.routes.draw do
  devise_for :users
  resources :stories do
  	resources :chapters do
      collection do
      
      end
    end
  end
  

  get 'homepage/index'

  root 'homepage#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
