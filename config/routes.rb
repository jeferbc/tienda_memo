Rails.application.routes.draw do
resources :categories
resources :products  #Crea el archivo de rutas convencionales para revisar usa rake routes

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
