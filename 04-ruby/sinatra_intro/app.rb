require 'sinatra'

get '/' do
  erb :home
end

get '/about' do
  erb :about
end

get '/donate' do
  erb :donate
end

# request
# /hello/iterm8s

# response
# welcome iterm8s

get '/hello/:username' do
  "welcome #{ params[:username] }"
end

# /calculate/4/5
# 9
get '/calculate/:num1/:num2' do
  @total = params[:num1].to_i + params[:num2].to_i

  erb :calculator
end

get '/contact' do
  erb :contact
end

get '/thanks' do
  "the amount you want to donate is #{ params[:amount] }"
end