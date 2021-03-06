Rails.application.routes.draw do

  devise_for :users, path_prefix: 'my', controllers: { omniauth_callbacks: 'users/omniauth_callbacks',
                                    confirmations: 'confirmations' }
  resources :users
  get 'users/new'
  get 'home' => 'static_pages#home'
  get 'help' => 'static_pages#help'
  get 'about' => 'static_pages#about'
  get 'signup' => 'users#new'
  get 'users' => 'users#index'
  get 'show-my-adverts' => 'adverts#new_advert'
  get 'show-all-adverts' => 'adverts#show_all_adverts'
  get 'show-adverts-auto' => 'adverts#index_auto'
  get 'show-adverts-moto' => 'adverts#index_moto'
  get 'show-adverts-velo' => 'adverts#index_velo'
  get 'show-adverts-foto' => 'adverts#index_foto'
  root 'static_pages#home'
  resources :adverts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
