require 'sinatra'

get '/juego' do
  erb :juego
end

get '/gano' do
  erb :gano
end

get '/' do
    erb :index
end
