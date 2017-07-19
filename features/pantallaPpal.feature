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

Scenario: Ingresar un numero de 4 digitos
	Given Iniciamos el juego
	And Ingreso numeroPrueba "2345" en "numero"
	Then debo ver "No son iguales"