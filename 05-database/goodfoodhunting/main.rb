require 'sinatra'
require 'sinatra/reloader'
require 'pg'

def run_sql(sql)
  db = PG.connect(dbname: 'goodfoodhunting')
  results = db.exec(sql)
  db.close
  return results
end

# list all dish
get '/' do # request
  @dishes = run_sql('SELECT * FROM dishes;')
  erb :index
end

# show new dish form
get '/dishes/new' do
  erb :new
end 

# creat a new dish
post '/dishes' do
  sql = "INSERT INTO dishes (name, image_url) VALUES ('#{ params[:name] }','#{ params[:image_url] }');"
  run_sql(sql)
  redirect to '/'
end

# show single dish
get '/dishes/:id' do
  sql = "SELECT * FROM dishes where id = #{ params[:id] };"
  results = run_sql(sql)
  @dish = results.first
  erb :show
end

# update existing dish
get '/dishes/:id/edit' do
  sql = "SELECT * FROM dishes where id = #{ params[:id] };"
  results = run_sql(sql) # database returns a array like collection always
  @dish = results.first
  erb :edit
end




