Feature:
		Como jugador de Picas y Fijas 
		Quiero seleccionar ver inicio de juego
		Para iniciar a jugar
		# Arrange = given
		# Act = when
		# Assert = Then
Scenario: Debe ingresar a pantalla de inicio
	Given Abrimos el juego
	Then debo ver "Picas y Fijas V 2.1"