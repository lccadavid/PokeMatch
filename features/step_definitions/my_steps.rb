
Dado(/^ingreso al juego$/) do
  visit '/'
  click_button("iniciar")

end

Entonces(/^debo ver un tablero con "(.*?)" filas y "(.*?)" columnas$/) do |filas, columnas|
  last_response.should have_xpath("//table[@id='tablero']/tr[4]")
  last_response.should have_xpath("//table[@id='tablero']/tr/td[5]")
end

Dado(/^que abri la pagina$/) do
  visit '/'
end

Entonces(/^debo ver "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end

Entonces(/^debo ver "(.*?)" imagenes ocultas$/) do |num_imagenes|
  document = Webrat::XML.html_document(response)
  columnas_cont = 0
  document.xpath("//table[@id='#{tablero}']//tr//td").each do |fila|
    columnas_cont+=1
  end
  columnas_cont.should == num_imagenes
end
