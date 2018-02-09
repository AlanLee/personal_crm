Rails.application.routes.draw do
  resources :dinner_friends
  get 'home/index'

  get 'show_data/show'
  get 'show_all_data/show'

  get  'dinner_friends/new'
  #post 'dinner_friends/new'

  get  'dinner_friends/_form'
  post 'dinner_friends/_form'

  get  'dinner_friends/index'
  post 'dinner_friends/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
