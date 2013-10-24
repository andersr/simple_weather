class CLIRouter

  attr_reader :weather_forecast, :commands

  def initialize(commands)
    @commands = commands # in fact this is ARGV
    get_user_location
    set_forecast_location
    wd = WeatherData.new(@forecast_location.first, @forecast_location.last)
    @weather_forecast = Forecast.new(wd)
  end

  def get_user_location
    @longitude_latitude = Geocoder.coordinates(open('http://whatismyip.akamai.com').read)
    # @latitude = longitude_latitude[0]
    # @longitude = longitude_latitude[1]
  end

  def set_forecast_location
    #based on idea that location would live in second slot

    #if other location false, use current location
    @forecast_location = Geocoder.coordinates(commands[1]) || @longitude_latitude
  end

  def help
    # TODO: rewrite with more detailed help block
    #puts weather_forecast.today
    #puts weather_forecast.separator
    puts "Try something like 'forecast tomorrow'"
  end

  def parse_commands
    # slot 1 is first command after 'forecast'
    if commands.length == 1
      puts weather_forecast.send(self.commands[0])
    elsif commands.length == 2
      weather_forecast.compare_loc = commands[1]
      puts "I'm comparing against #{weather_forecast.compare_loc}"
      puts weather_forecast.send(self.commands[0])
    elsif commands.length == 0
      help
    end
  end

end

