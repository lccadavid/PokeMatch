require 'sinatra'
enable :sessions

get '/juego' do
  erb :juego
end

get '/gano' do
  session['intentos'] = '3'
  session['resultado'] = '50'
  erb :gano
end

get '/perdio' do
  session['intentos'] = '3'
  session['resultado'] = '50'
  erb :perdio
end

get '/' do
    erb :index
end
