Rails.application.routes.draw do
  resources :bank_details
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'pages#home'

end
