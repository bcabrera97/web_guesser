require 'sinatra'
require 'sinatra/reloader'

secret_number= rand(101).to_s

get "/" do 
	
	"The secret number is: #{secret_number}"
end