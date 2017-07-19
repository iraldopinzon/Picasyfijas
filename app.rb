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
	num = params["numero"]
	myGame = Picasyfijas.new num,"0987"
	
	if myGame.validar_igual num 
		session["resultado"] = "<h2>#{num} Son iguales</h2><br><h1>GANASTE</h1>"
	else
		session["resultado"] = "<h2>#{num} No son iguales</h2><br>"
	end
	session["log"] = session["log"].to_s + session["resultado"].to_s
	erb(:pantallaPrincipal)
end