Rails.application.routes.draw do

  devise_for :users
  root "pages#index" 
  get "/home/about" => "pages#about"
  get "/home/delivery" => "pages#delivery"
  get "/home/questions" => "pages#questions"
  
  resources :pages
  resources :products, only: [:index, :show] 
  resources :bulletins, only: [:index, :show]
  resources :contacts 


  namespace :admin, path: "en1070416" do
    resources :products
    root "products#index"
    resources :bulletins
    resources :categories
    resources :contacts, only: [:index, :destroy]
  end

end
