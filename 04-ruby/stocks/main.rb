require 'sinatra'
require 'sinatra/reloader'
require 'yahoofinance'

get '/' do
  erb :index
end

get '/ticker' do
  result = YahooFinance::get_quotes(YahooFinance::StandardQuote, params[:ticker])

  @last_trade = result[ params[:ticker] ].lastTrade

  erb :ticker
end