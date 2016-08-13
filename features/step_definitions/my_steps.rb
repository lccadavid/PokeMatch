
Dado(/^ingreso al juego$/) do
  visit '/'
  click_button("iniciar")

end

Entonces(/^debo ver un tablero con "(.*?)" filas y "(.*?)" columnas$/) do |filas, columnas|
  document = Webrat::XML.html_document(response)
  filas_cont = 0
  document.xpath("//table[@id='tablero']/tr").each do |fila|
    filas_cont+=1
  end
  columnas_cont = 0
  document.xpath("//table[@id='tablero']/tr/td").each do |fila|
    columnas_cont+=1
  end

  filas_cont ==  filas
  columnas_cont == columnas
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
  document.xpath("//table[@id='tablero']/tr").each do |fila|
    fila.xpath("./td").each do |columna|
      columnas_cont+=1
    end
  end
  columnas_cont.should == num_imagenes.to_i
end

Dado(/^que gane el juego$/) do
  visit '/gano'
end

Entonces(/^quiero ver "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end

Dado(/^que perdi el juego$/) do
  visit '/perdio'
end

Entonces(/^necesito ver "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end
