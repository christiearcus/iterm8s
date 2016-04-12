     
require 'sinatra'
require 'pg'

get '/' do
  db = PG.connect(dbname: 'goodfoodhunting')
  rows = db.exec('SELECT * FROM dishes;')

  @first_dish_name = rows[0]['name']

  erb :index
end





