Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get 'pages/about' => 'pages#about'

  resources :articles

  get 'signup' => 'users#new'
  resources :users, except: [:new]

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  resources :categories, except: [:destroy]
end
