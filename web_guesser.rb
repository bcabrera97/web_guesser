require 'sinatra'
require 'sinatra/reloader'

secret_number= rand(101).to_s

get "/" do 
	 if secret_number.to_i > params["guess"].to_i
	 	guess="too low"
	 elsif secret_number.to_i < params["guess"].to_i
	 	guess="too high!"
	 elsif (secret_number.to_i)+5 <= params["guess"].to_i
		guess="WAY to HIGH"
	 elsif (secret_number.to_i)-5 >= params["guess"].to_i
	 	guess="WAY to LOW"
	 else secret_number.to_i == params["guess"].to_i
	 	guess="CORECCT!"	
	end
	erb :index, :locals => {:number => secret_number, :guess => guess}
end
