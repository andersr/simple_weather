class CLIRouter

  attr_reader :weather_forecast, :args

  def initialize(args)
    @args = args # in fact this is ARGV
    
    local_geo = Geocoder.coordinates(open('http://whatismyip.akamai.com').read)
    @geo = Geocoder.coordinates(args[1]) || local_geo

    wd = WeatherData.new(@geo.first, @geo.last)
    @weather_forecast = Forecast.new(wd)
  end

  def help
    puts weather_forecast.today
    puts "thanks for using simple forecast. currently, you can ask for the following simple forecasts:"
    puts "      tomorrow"
    puts "      today"
    puts "      tonight"
    puts "      this_weekend"
    # if you'd like a different forecast try something like 'forecast tomorrow'"
    #TODO: implement chronic
    #Chronic.parse("tonight").to_i => Unix seconds of 10pm tonight
  end

  def commands
    if args.include?("-h")
      return help
    end

    if args.length == 1
      puts weather_forecast.send(self.args[0])
    elsif args.length == 2
      weather_forecast.compare_loc = args[1]
      puts "I'm comparing against #{weather_forecast.compare_loc}"
      puts weather_forecast.send(self.args[0])
    elsif args.length == 0
      help
    end
  end

end

