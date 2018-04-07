Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :projects
  resources :techs
  resources :declarations do
    resources :entries
  end

  root to: 'pages#home'
  get '/contact' => 'pages#contact'
end
