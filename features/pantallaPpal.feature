Feature:
		Como jugador de Picas y Fijas 
		Quiero ingresar un numero 
		Para que me diga las picas y las fijas
		# Arrange = given
		# Act = when
		# Assert = Then
Scenario: Debe ingresar a pantalla de juego
	Given Iniciamos el juego
	Then debo ver "Intento 1"

