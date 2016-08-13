Feature:
  Como usuario de Pokematch
  Deseo ver el tablero de juego
  Para ver pokemones y comparar entre si con aquellos que sean iguales

  Scenario: Quiero ver un tablero un tablero de 5 filas por 4 columnas
    Given ingrese al juego
    Then debo ver un tablero con "5" filas y "4" columnas
    
