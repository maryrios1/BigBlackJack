Given(/^que abri la aplicacion$/) do
  visit '/'
end

Then(/^debo ver "(.*?)"$/) do |titulo|
  last_response.body.should =~ /#{titulo}/m
end

When(/^se inicia un nuevo juego$/) do
  click_button("jugar")
end

Then(/^el jugador "(.*?)" recibe dos cartas$/) do |player|
  last_response.body.should =~ /#{player}/m
end

When(/^el usuario presione Reiniciar$/) do
  click_button("reiniciar")
end

Given(/^veo el texto "(.*?)"$/) do |titulo|
  last_response.body.should =~ /#{titulo}/m
end
