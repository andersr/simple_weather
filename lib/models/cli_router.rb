class CLIRouter

  attr_reader :weather_data

  def initialize
    @weather_forecast = Forecast.new(WeatherData.new)
    @arg = ARGV
  end

  def help
    today
    puts "if you'd like a different forecast try something like 'forecast tomorrow'"
  end

  def tomorrow
    puts weather_forecast.tomorrow
  end

  def today
    puts weather_forecast.today
  end

  def commands
    if arg.length == 1
      puts weather_forecast.send(arg[0])
    end
  end


  # def this_weekend
  #   puts weather_data.this_weekend

  # end

  # def next_week
  #   puts weather_data.next_week
  # end




end

