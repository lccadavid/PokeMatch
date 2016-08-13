
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
  document.xpath("//table[@id='tablero']/tr").each_with_index do |fila, index|
    fila.xpath("./td/button/img").each_with_index do |columna, index|
      columnas_cont+=1
    end
  end
  columnas_cont.should == num_imagenes.to_i
end

Dado(/^que gane el juego$/) do
  visit '/gano'
end

Dado(/^que perdi el juego$/) do
  visit '/perdio'
end

Entonces(/^necesito ver "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end

Dado(/^que tuve "(.*?)"$/) do |intentos|
  visit '/gano'
  visit '/perdio'
  last_response.body.should =~ /#{intentos}/m
end

Entonces(/^el resultado debe ser "(.*?)"$/) do |resultado|
  visit '/gano'
  visit '/perdio'
  last_response.body.should =~ /#{resultado}/m
end

Cuando(/^selecciono el el pokemon en la posicion "(.*?)","(.*?)"$/) do |x, y|
   click_link("#{x}-#{y}")
end


Entonces(/^debo ver el pokemon "(.*?)"$/) do |pokemon|
    last_response.body.should =~ /#{pokemon}/m
end

Entonces(/^debo ver el pokemon "(.*?)" oculto$/) do |arg1|
    clast_response.body.should =~ "pikachu"
end

