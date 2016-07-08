require 'sinatra'

get '/' do
  erb :index
end

post '/jugar' do
  @jugador1 = "Juan"
  @maquina = "maquina"
  erb :jugar
end
