require 'sinatra'
require 'sinatra/reloader'

get '/' do

  @username = params[:who]

  if params[:who] == nil
    @price = ''
  elsif params[:who] == 'dt'
    @price = 12 + 5
  else
    @price = 2
  end

  erb :home
end

get '/cheeseburger' do
  # doing something process
  # make a response
  # send back to user
  return "there ="
end

get '/bigmac' do

  if params[:who] == 'dt'
    @price = 12 + 5
  else
    @price = 2
  end

  return erb(:mcd)
end

get '/menu/:pickers' do

  # params
  return "we dont sell #{ params[:pickers] } "
end
