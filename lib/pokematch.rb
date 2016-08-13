class PokeMatch

  pokemones=[
    ["pikachu", "ekans", "charmander", "paras", "nidoran"],
    ["charmander","ekans","caterpie","rattata","spearow"],
    ["nidoran","paras","clefairy","spearow","clefairy"],
    ["venonat","rattata","caterpie","pikachu","venonat"]
  ]

  attr_reader :intentos

  def initialize
    @intentos = 3
  end


  def get_intentos
    @intentos
  end


  def get_resultado
    resultado = 110 - 20 * @intentos
  end


end
