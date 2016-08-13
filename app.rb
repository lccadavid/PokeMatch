require 'sinatra'

get '/juego' do
  erb :juego
end

get '/gano' do
  erb :gano
end

get '/perdio' do
  erb :perdio
end

get '/' do
    erb :index
end
