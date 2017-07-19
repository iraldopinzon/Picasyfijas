require 'sinatra'
require './config'

get '/' do
	erb(:index)
end

post '/inicio' do
	"Intento 1"
end