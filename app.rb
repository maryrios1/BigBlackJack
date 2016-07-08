require 'sinatra'
require './lib/card.rb'
require './lib/deck.rb'

get '/' do
  erb :index
end

post '/jugar' do
  @jugador1 = "Juan"
  @maquina = "maquina"
  deck = Deck.new
  deck.shuffle!
  @carta1 = deck.draw
  deck.shuffle!
  @carta2 = deck.draw
  deck.shuffle!
  @carta3 = deck.draw
  deck.shuffle!
  @carta4 = deck.draw
  deck.shuffle!
  erb :jugar
end
