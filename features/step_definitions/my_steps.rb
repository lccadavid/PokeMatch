Dado(/^que abri la pagina$/) do
  visit '/'
end

Entonces(/^debo ver "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end
