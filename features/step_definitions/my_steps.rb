Given(/^Abrimos el juego$/) do
 visit '/'
end

Then(/^debo ver "([^"]*)"$/) do |text|
  expect(page.body).to match /#{text}/m
end

Given(/^Iniciamos el juego$/) do
  visit '/inicio'
end

