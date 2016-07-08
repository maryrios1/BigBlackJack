Given(/^que abri la aplicacion$/) do
  visit '/'
end

Then(/^debo ver "(.*?)"$/) do |titulo|
  last_response.body.should =~ /#{titulo}/m
end

When(/^se inicia un nuevo juego$/) do
  click_button("jugar")
end

Then(/^el jugador "(.*?)" recive "(.*?)" y "(.*?)"$/) do |jugador, carta1, carta2|
  last_response.body.should =~ /#{jugador}: #{carta1}, #{carta2}/m
end
