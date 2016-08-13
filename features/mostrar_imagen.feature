#language: es

Característica:
  Como jugador de pokematch
  Quiero mostrar la imagen seleccionada en la matriz
  Para hacer ver que pokemon seleccione

  Escenario: destapar figura seleccionada
    Dado que abri la pagina
    Y debo ver "Bienvenido a PokeMatch"
    Cuando selecciono el el pokemon en la posicion "3","2"
    Entonces debo ver el pokemon "pikachu" oculto
