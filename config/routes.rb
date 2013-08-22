Farmfind::Application.routes.draw do
 
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

devise_for :users

resources :users do
  resources :farms, controller: "AdminFarms"
end
  
resources :farms

resources :pages
get "pages/index"

match '/about' => 'pages#about'
match ':permalink', :controller => 'pages', :action => 'show', :as => 'about'
root :to => 'pages#index'


end
