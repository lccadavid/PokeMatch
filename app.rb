
require 'sinatra'
require './lib/pokematch'
enable :sessions



get '/juego' do
  session['pokematch'] = PokeMatch.new
  erb :juego
end

get '/gano' do
  session['intentos'] = '3'
  session['resultado'] = '50'
  erb :gano
end

get '/perdio' do

  session['intentos'] = session['pokematch'].get_intentos
  session['resultado'] = session['pokematch'].get_resultado
  erb :perdio
end

post '/seleccionar' do

  pokemonSeleccionado = params["xy"].split("-")

  session['pokematch'].seleccionar pokemonSeleccionado[0].to_i, pokemonSeleccionado[1].to_i

  erb :juego
end

get '/' do
    erb :index
end

