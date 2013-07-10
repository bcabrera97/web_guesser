require 'sinatra'
require 'sinatra/reloader'

secret_number= rand(101).to_s

get "/" do 
	 if(secret_number.to_i)+5 <= params["guess"].to_i
		guess="WAY too high!"
	 elsif (secret_number.to_i)-5 >= params["guess"].to_i
	 	guess="WAY too low!"
	 elsif secret_number.to_i > params["guess"].to_i
	 	guess="TOO low!"
	 elsif secret_number.to_i < params["guess"].to_i
	 	guess="TOO high!"
	 else secret_number.to_i == params["guess"].to_i
	 	guess="The secret number is: #{secret_number} You got it right!"
	end
	erb :index, :locals => {:number => secret_number, :guess => guess}
end
