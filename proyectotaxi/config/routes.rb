Rails.application.routes.draw do
  resources :reservas do
    member do 
      post :envio_reserva
    end
  end

  # Se debe configurar para el inicio de la pagina web
  root 'home#index'
  
  # Se crea el login y logout para el administrador
  devise_for :admins, controllers: {sessions: 'admins/sessions'}
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  # Se crea el login y logout para los usuarios o clientes
  devise_for :users, controllers: {sessions: 'users/sessions', registrations: 'users/registrations'}
  devise_for :drivers, controllers: {sessions: 'drivers/sessions', registrations: 'drivers/registrations'}
  
  # Debes comentar el signo numeral para no utilizar
  #get 'home/index'

  # Debes adicionar la ruta de los archivos.
  get 'home/contact', to: 'home#contact'
  post 'home/contact', to: 'home#contact'
  
  get 'home/register', to: 'home#register'

  get 'home/services', to: 'home#services'

  get 'home/about', to: 'home#about'

  get 'home/reservation', to: 'home#reservation'
end
