class WeatherController < ApplicationController
	
	def home
	end

	def results
		@location = params[:location]
		@info = get_weather_info(params[:lat], params[:lng])
	end

	private
	def get_weather_info(latitude, longitude)
		weather = Weather.get('https://api.forecast.io/forecast/f6c94e488810a55e46971fa3fe534696/' \
		                       + latitude.to_s + ',' + longitude.to_s + '?units=si')
		weather.to_h
	end
end