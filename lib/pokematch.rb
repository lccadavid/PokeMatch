class PokeMatch

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