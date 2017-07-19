Given(/^Abrimos el juego$/) do
 visit '/'
end

Then(/^debo ver "([^"]*)"$/) do |text|
  expect(page.body).to match /#{text}/m
end

When(/^inicie game$/) do
	click_button("Iniciar")
end

Given(/^Iniciamos el juego$/) do
  visit '/'
  click_button("Iniciar")
end

Given(/^Ingreso numeroPrueba "([^"]*)" en "([^"]*)"$/) do |value, field|
  fill_in(field, :with => value)
end

Given(/^presiona "([^"]*)" validar$/) do |arg1|
click_button("Try")
end