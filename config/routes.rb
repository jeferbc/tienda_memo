Rails.application.routes.draw do
  root 'pages#home'
  devise_for :users
  resources :purchases
  resources :categories
  resources :products  #Crea el archivo de rutas convencionales para revisar usa rake routes
  get 'profile' => 'pages#profile'
  get 'dashboard' => 'purchases#dashboard'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

end
