class Forecast

  attr_accessor :today_temp, :yesterday_temp, :tomorrow_temp, :weather_data, :compare_loc

  def initialize(weather_data_object)
    @weather_data = weather_data_object

    @today_temp = self.weather_data.today_temp
    @tomorrow_temp = self.weather_data.tomorrow_temp
    # @this_weekend = self.avg_temp_this_weekend
    # @next_week = self.avg_temp_next_week
  end

  def today
    puts "hmm, interesting!"
    @yesterday_temp = self.weather_data.yesterday_temp
    separator + 
    "temp: #{compare(today_temp, yesterday_temp)}yesterday\n#{self.weather_data.today_summary}"
  end

  def tomorrow
    separator +
    "temp: #{compare(tomorrow_temp, today_temp)}today\n#{self.weather_data.tomorrow_summary}"
  end

  def avg_temp_this_weekend
    data = find_weekend_time # if it's 3, then take 1 and 2
    weekend_avg = (data[1]["temperatureMax"] + data[2]["temperatureMax"])/2
    puts weekend_avg
    weekend_avg
  end

  def find_weekend_time
    weekend_data = weather_data.today_data["daily"]["data"].select do |data_hash|
      ruby_datetime = Time.at(data_hash["time"])
      ruby_datetime.saturday? || ruby_datetime.sunday?
    end

  end


  def avg_temp_next_weekend

  end

  def this_weekend
    puts today_temp
    compare(avg_temp_this_weekend, today_temp) + "today"
  end

  def next_week
    # compare(this_week_avg, next_week_avg)
  end

  def compare(temp1, temp2)
    diff = (temp1.round-temp2.round).abs

    case diff
    when (0..2)
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

  def separator
    "------------------\n"
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

