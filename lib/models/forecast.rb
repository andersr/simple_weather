class Forecast

  attr_accessor :today_temp, :yesterday_temp, :tomorrow_temp, :weather_data

  def initialize(weather_data_object)
    @weather_data = weather_data_object

    @today_temp = self.weather_data.temp_today
    @tomorrow_temp = self.weather_data.temp_tomorrow
    # @this_weekend = self.avg_temp_this_weekend
    # @next_week = self.avg_temp_next_week
  end

  def today
    puts "hmm, interesting!"
    @yesterday_temp = self.weather_data.temp_yesterday
    compare(today_temp, yesterday_temp) + "yesterday"
  end

  def tomorrow
    compare(tomorrow_temp, today_temp) + "today"
  end

  def avg_temp_this_weekend

  end

  def avg_temp_next_weekend

  end

  def this_weekend
    # compare(this_week_avg_temp?, temp_for_upcoming_weekend)
  end

  def next_week
    # compare(this_week_avg, next_week_avg)
  end

  def compare(temp1, temp2)
    diff = temp1-temp2

    case diff.abs
    when (1..2)
      temp1 = temp2
    when (3..7)
      mod = "slightly "
    when (7..12)
      mod = "somewhat "
    when (12..30)
      mod = "much "
    else
      mod = ''
    end

    if temp1 == temp2
      "pretty much the same as "
    elsif temp1 < temp2
      mod + "colder than "
    else
      mod + "warmer than "
    end
  end

# categorization
# "same"
# "colder than"
# "warmer than"

# compared objects
# "yesterday"
# "today"
# "tomorrow"

end

