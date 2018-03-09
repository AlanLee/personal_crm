Rails.application.routes.draw do

  resources :controllers
  resources :dinner_friends
  # resources :contacts

  get 'home/index'

  get 'show_data/show'
 post 'show_data/show'
 post 'show_data/select_by_first_name_search_string'

  get 'show_all_data/show'

  get  'dinner_friends/new'
  #post 'dinner_friends/new'
  get  'dinner_friends/_form'
  post 'dinner_friends/_form'
  get  'dinner_friends/index'
  post 'dinner_friends/index'

#  get ':controller(/:action(/:id))'
 get  'contacts/index'
 post 'contacts/index'
 get  'contacts/create_new_contact_by_name'
 post 'contacts/create_new_contact_by_name'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
