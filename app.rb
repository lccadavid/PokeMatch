require 'sinatra'
require './lib/pokematch'
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
  pokematch = PokeMatch.new
  session['intentos'] = pokematch.get_intentos
  session['resultado'] = pokematch.get_resultado
  erb :perdio
end

get '/' do
    erb :index
end
