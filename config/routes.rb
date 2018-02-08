Rails.application.routes.draw do
  resources :dinner_friends
  get 'home/index'
  get 'show_all_data/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
