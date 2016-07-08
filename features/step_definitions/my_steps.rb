Given(/^que abri la aplicacion$/) do
  visit '/'
end

Then(/^debo ver "(.*?)"$/) do |titulo|
  last_response.body.should =~ /#{titulo}/m
end

Given(/^se inicia un nuevo juego$/) do
  click_link(nuevoJuego)
end

When(/^se reparten las cartas$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^el jugador "(.*?)" recive dos cartas$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^la maquina recive dos cartas$/) do
  pending # express the regexp above with the code you wish you had
end
