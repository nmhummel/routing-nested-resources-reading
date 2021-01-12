Rails.application.routes.draw do
  root 'posts#index'
  
  resources :authors, only: [:show] do
    resources :posts, only: [:show, :index]
  end

  resources :posts, only: [:index, :show, :new, :create, :edit, :update]
  
  

end
