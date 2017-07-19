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
	Then debo ver "Intentar"

Scenario: Ingresar un numero de 4 digitos y validarlo
	Given Iniciamos el juego
	And Ingreso numeroPrueba "2345" en "numero"
	And presiona "Try" validar 
	Then debo ver "No son iguales"

Scenario: Ingresar un numero de 4 digitos y validarlo
	Given Iniciamos el juego
	And Ingreso numeroPrueba "0987" en "numero"
	And presiona "Try" validar 
	And debo ver "Son iguales"
	Then debo ver "GANASTE"