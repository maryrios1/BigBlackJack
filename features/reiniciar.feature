Feature:
  Como jugador de BJ
  quiero poder reiniciar el juego
  para jugar más de una vez

Scenario: al presionar reiniciar quitar cartas y repartir de nuevo.
  Given que abri la aplicacion
  And se inicia un nuevo juego
  And el jugador "Juan" recibe dos cartas
  And el jugador "maquina" recibe dos cartas
  And veo el texto "Se termino el juego"
  Then se inicia un nuevo juego
