require 'sinatra'
require 'sinatra/reloader'

secret_number= rand(101).to_s

get "/" do 
	
	erb :index, :locals => {:number => secret_number}
end