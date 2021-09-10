Rails.application.routes.draw do

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks',
                                    confirmations: 'confirmations' }

  get 'users/new'
  get 'home' => 'static_pages#home'
  get 'help' => 'static_pages#help'
  get 'about' => 'static_pages#about'
  get 'signup' => 'users#new'
  get 'users' => 'users#index'
  get 'edit_by_admin' => 'users#edit_by_admin'
  get 'show-my-adverts' => 'adverts#new_advert'
  get 'show-all-adverts' => 'adverts#show_all_adverts'
  root 'static_pages#home'
  resources :adverts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
