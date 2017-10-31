Rails.application.routes.draw do
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "hcdesigns#index"

  get "/services" => "services#index", as: "services"
  get "/inspiration" => "inspiration#index", as: "inspiration"
  get "/about" => "about#index", as: "about"
  get "/contact" => "contact#new", as: "contact"
  post "/contact" => "contact#create", as: "create_message"

  delete "/images/:id" => "images#destroy", as: "delete_image"

  resources :portfolio, :except => [:show, :edit, :patch]
  resources :portfolio, param: :slug, :only => [:show, :edit, :patch]

  resources :admins, param: :slug, :only => [:show, :edit]
   
  # match '/send_mail', to: 'contact#send_mail', via: 'post'

end
