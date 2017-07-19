require 'sinatra'
require './config'

get '/' do
	erb(:index)
end

post '/inicio' do
	session["resultado"] = "No son iguales"
	erb(:pantallaPrincipal)
end