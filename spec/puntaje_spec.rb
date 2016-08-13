require './lib/pokematch'

describe PokeMatch do

  it "El puntaje de 3 intentos el puntaje debe ser 50" do
    pm = PokeMatch.new
    pm.get_resultado.should == 50
  end

end
