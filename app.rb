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
	myGame = Picasyfijas.new "0987"
	num = params["numero"]
	if myGame.validar_igual num 
		session["resultado"] = "Son iguales"
	else
		session["resultado"] = "No son iguales"
	end	
	erb(:pantallaPrincipal)
end