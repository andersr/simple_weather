class CLIRouter

  attr_reader :weather_forecast, :args

  def initialize(args)
    @weather_forecast = Forecast.new(WeatherData.new)
    @args = args # in fact this is ARGV
  end

  def help
    weather_forecast.today
    puts "if you'd like a different forecast try something like 'forecast tomorrow'"
  end

  def commands
    if args.length == 1
      puts weather_forecast.send(self.args[0])
    elsif args.length == 0
      help
    end
  end


  # def this_weekend
  #   puts weather_data.this_weekend

  # end

  # def next_week
  #   puts weather_data.next_week
  # end




end

