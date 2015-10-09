Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get    'chofer/login'   => 'driver_session#new'
  post   'chofer/login'   => 'driver_session#create'
  delete 'chofer/logout'  => 'driver_session#destroy'

  get    'signup'  => 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  get    'about'  	=> 'static#about'
  get    'contact'  => 'static#contact'

  root 'static#index'

resources :users, only: [:new, :create, :show, :edit, :update] do
  resources :services, except: :index do
    resources :feedbacks
  end
end
resources :drivers do
	resources :services do
    resources :feedbacks
  end
  resources :vehicles
end




end
