require 'sinatra'
require './config'

get '/' do
	erb(:index)
end

post '/inicio' do
	erb(:pantallaPrincipal)
end