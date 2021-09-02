Rails.application.routes.draw do

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks',
                                    confirmations: 'confirmations' }

  get 'users/new'
  get 'home' => 'static_pages#home'
  get 'help' => 'static_pages#help'
  get 'about' => 'static_pages#about'
  get 'signup' => 'users#new'
  get 'show-all-users' => 'users#index'
  get 'show-my-adverts' => 'users#show'
  get 'show-all-adverts' => 'users#show_all_adverts'
  root 'static_pages#home'
  resources :adverts, only: [:create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
