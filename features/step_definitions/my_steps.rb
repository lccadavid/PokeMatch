
Given(/^ingrese al juego$/) do
  visit '/'
  click_button("iniciar")

end

Then(/^debo ver un tablero con "(.*?)" filas y "(.*?)" columnas$/) do |filas, columnas|
  last_response.should have_xpath("//table[@id='tablero']/tr[4]")
  last_response.should have_xpath("//table[@id='tablero']/tr/td[5]")
end

Dado(/^que abri la pagina$/) do
  visit '/'
end

Entonces(/^debo ver "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end
