require_relative '../config/environment.rb'

weather = WeatherData.new
forecast = Forecast.new(weather)
forecast.generate_forecast

binding.pry
