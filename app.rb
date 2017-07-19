require 'sinatra'
require './config'

get '/' do
	erb(:index)
end

get '/inicio' do
	"Intento 1"
end