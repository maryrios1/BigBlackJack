Feature:
  Como Jugador
  Quiero que el juego reparta las cartas a los jugadores
  Para simular un mesa de juego

Scenario: Cada Jugador debe de tener dos cartas
  Given que abri la aplicacion
  When se inicia un nuevo juego
  Then el jugador "Juan" recive "J-corazon" y "A-rombos"
  And el jugador "maquina" recive "3-picas" y "9-trebol"
