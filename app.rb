require 'sinatra'
require './lib/card.rb'
require './lib/deck.rb'

$d = []

get '/' do
  erb :index
end

post '/jugar' do
  @jugador1 = "Juan"
  @maquina = "maquina"
  deck = Deck.new
  deck.shuffle!
  @carta1 = deck.draw
  @carta2 = deck.draw
  @carta3 = deck.draw
  @carta4 = deck.draw

  @puntaje = "Tu puntaje es de: " + (@carta1.value.to_i + @carta2.value.to_i).to_s
  @puntajeM = "Tu puntaje es de: " + (@carta3.value.to_i + @carta4.value.to_i).to_s
  @puntajei= (@carta1.value.to_i + @carta2.value.to_i)
  @puntajeiM = (@carta3.value.to_i + @carta4.value.to_i)

  if (@puntajei>21 and @puntajeiM<=21)
    @ganador= @maquina
  elsif @puntajeiM>21 and @puntajei<=21
    @ganador= @jugador1
  elsif(@puntajeiM==@puntajei)
    @ganador="Empate"
  elsif @puntajei>21 and @puntajeiM>21
    @ganador="Los dos pierden"
  elsif @puntajei>@puntajeiM
    @ganador=@jugador1
  else
    @ganador=@maquina
  end




  deck.shuffle!
  erb :jugar
end
