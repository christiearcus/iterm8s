require 'sinatra'
require 'sinatra/reloader'
require 'pg'

require './db_config'
require './models/dish'
require './models/dish_type'
require './models/comment'
require './models/user'

enable :sessions

helpers do

  def current_user
    User.find_by(id: session[:user_id])
  end

  def logged_in?
    !!current_user

    # if current_user
    #   return true
    # else
    #   return false
    # end
  end

end

def run_sql(sql)
  db = PG.connect(dbname: 'goodfoodhunting')
  results = db.exec(sql)
  db.close
  return results
end

# close the database connection after every request
after do
  ActiveRecord::Base.connection.close
end

# list all dish
get '/' do # request
  # return params.inspect
  @dish_types = DishType.all
  # filter my dishes based on the selected dish_type_id
  if params[:id]
    # if user pass in id as a querystring
    @dishes = Dish.where(dish_type_id: params[:id])
  else
    # just get all dishes
    @dishes = Dish.all
  end

  erb :index
end

# show new dish form
get '/dishes/new' do
  redirect to '/session/new' if !logged_in?

  @dish_types = DishType.all
  erb :new
end 

# creat a new dish
post '/dishes' do
  dish = Dish.new
  dish.name = params[:name]
  dish.image_url = params[:image_url]
  dish.dish_type_id = params[:dish_type_id]
  dish.save
  redirect to '/'
end

# show single dish
get '/dishes/:id' do
  @dish = Dish.find(params[:id])
  @comments = @dish.comments
  erb :show
end

# show edit dish form
get '/dishes/:id/edit' do
  @dish = Dish.find(params[:id])
  @dish_types = DishType.all
  erb :edit
end

# update existing dish
patch '/dishes/:id' do
  # update the existing dish from db
  dish = Dish.find(params[:id])
  dish.name = params[:name]
  dish.image_url = params[:image_url]
  dish.dish_type_id = params[:dish_type_id]
  dish.save
  redirect to '/'
end

delete '/dishes/:id' do
  dish = Dish.find(params[:id])
  dish.destroy
  redirect to '/'
end

post '/dishes/:dish_id/comments' do
  # create a new comment for dish with dish_id
  comment = Comment.new
  comment.body = params[:body]
  comment.dish_id = params[:dish_id]
  comment.save
  redirect to "/dishes/#{ params[:dish_id] }"
end

get '/session/new' do
  erb :login
end

post '/session' do
  user = User.find_by(email: params[:email])
  if user && user.authenticate(params[:password])
    # we're in! create a new session
    session[:user_id] = user.id
    # redirect
    redirect to '/'
  else
    # stay at the login form
    erb :login
  end
end

delete '/session' do
  session[:user_id] = nil
  redirect to '/'
end




