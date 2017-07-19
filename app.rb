require 'sinatra'
require './config'
require './lib/picasyfijas.rb'

get '/' do
	erb(:index)
end

post '/inicio' do
	session["resultado"] = "Intentar"
	erb(:pantallaPrincipal)
end

post '/juego' do
	myGame = Picasyfijas.new
	if myGame.validar_igual "2345"
		session["resultado"] = "No son iguales"
	else
		session["resultado"] = "No son iguales"
	end	
	erb(:pantallaPrincipal)
end