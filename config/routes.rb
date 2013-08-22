Farmfind::Application.routes.draw do
 
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

devise_for :users

resources :users do
  resources :farms, controller: "AdminFarms"
end
  
resources :farms

resources :pages
get "pages/index"
get "pages/terms"
get "pages/feedback"

match '/terms' => 'pages#terms'
match '/about' => 'pages#about'
match '/feedback' => 'pages#feedback'

root :to => 'pages#index'


end
