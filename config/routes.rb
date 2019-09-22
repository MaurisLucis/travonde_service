Rails.application.routes.draw do
  devise_for :users
  root :to => 'welcome#index'
  get '/volunteer', :to => 'welcome#volunteer', :as => 'volunteer'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
