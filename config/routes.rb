Rails.application.routes.draw do
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "hcdesigns#index"

  get "/services" => "services#index", as: "services"
  get "/inspiration" => "inspiration#index", as: "inspiration"
  get "/about" => "about#index", as: "about"
  get "/contact" => "contact#index", as: "contact"

  resources :portfolio, :except => [:show, :edit, :patch]
  resources :portfolio, param: :slug, :only => [:show, :edit, :patch]

  resources :admins, param: :slug, :only => [:show, :edit]
end
