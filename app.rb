require 'sinatra'

get '/juego' do
  erb :juego
end

get '/' do
    erb :index
end
