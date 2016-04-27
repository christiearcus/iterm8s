Rails.application.routes.draw do
            # controller # method
  get '/' => 'dishes#index'

  get '/dishes/new' => 'dishes#new'
  post '/dishes' => 'dishes#create'

  # show single dish
  get '/dishes/:id' => 'dishes#show'

  get '/dishes/:id/edit' => 'dishes#edit'
  put '/dishes/:id' => 'dishes#update'

  delete '/dishes/:id' => 'dishes#destroy'

end
