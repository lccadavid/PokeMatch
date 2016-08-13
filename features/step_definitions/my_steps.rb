Given(/^ingrese al juego$/) do
  #visit '/'
  #click_button("iniciar")
  visit '/juego'
end

Then(/^debo ver un tablero con "(.*?)" filas y "(.*?)" columnas$/) do |filas, columnas|
  last_response.should have_xpath("//table[@id='tablero']/tr[4]")
  last_response.should have_xpath("//table[@id='tablero']/tr/td[5]")
end
