Rails.application.routes.draw do

  get    'signup'  => 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  get    'about'  	=> 'static#about'
  get    'contact'  => 'static#contact'
  root 'static#index'

resources :users, only: [:new, :create, :show, :edit, :update] do
  resources :services
end
resources :drivers do
	resources :services
end



end
