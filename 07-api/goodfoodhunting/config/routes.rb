Rails.application.routes.draw do
            # controller # method
  get '/' => 'dishes#index'

  resources :dishes
  resources :dish_types

  # get '/dishes/new' => 'dishes#new'
  # post '/dishes' => 'dishes#create'

  # # show single dish
  # get '/dishes/:id' => 'dishes#show'

  # get '/dishes/:id/edit' => 'dishes#edit'
  # put '/dishes/:id' => 'dishes#update'

  # delete '/dishes/:id' => 'dishes#destroy'


  # # list all dish types
  # get '/dish_types' => 'dish_types#index'
  # # show single dish type
  # get '/dish_types/:id' => 'dish_types#show'

  # resources :dish_types

end
