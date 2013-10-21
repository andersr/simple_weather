class Forecast

  attr_accessor :today_temp, :yesterday_temp, :tomorrow_temp, :weather_data, :compare_loc

  def initialize(weather_data_object)
    @weather_data = weather_data_object

    @today_temp = self.weather_data.today_temp
    @tomorrow_temp = self.weather_data.tomorrow_temp
  end

  def today
    puts "gathering additional data"
    @yesterday_temp = self.weather_data.yesterday_temp
    separator + 
    "temp: #{compare(today_temp, yesterday_temp)}yesterday\n#{self.weather_data.today_summary}"
  end

  def tomorrow
    separator +
    "temp: #{compare(tomorrow_temp, today_temp)}today\n#{self.weather_data.tomorrow_summary}"
  end

  def weekend
    separator +
    compare(avg_temp_this_weekend, today_temp) + "today"
  end

  def next_week
    separator
    # TODO: compare(this_week_avg, today)
  end

  # def this_weekend
  #   puts weather_data.this_weekend
  # end

  # def next_week
  #   puts weather_data.next_week
  # end
  
  def avg_temp_this_weekend
    data = find_weekend_data
    weekend_avg = (data[0]["temperatureMax"] + data[1]["temperatureMax"])/2
  end

  def find_weekend_data
    weekend_data = weather_data.today_data["daily"]["data"][1..7].select do |data_hash|
      ruby_datetime = Time.at(data_hash["time"])
      ruby_datetime.saturday? || ruby_datetime.sunday?
    end
  end

  def avg_temp_this_week

  end

  def avg_temp_next_week
  end

  def find_week_time
    week_data = weather_data.today_data["daily"]["data"][1..7].reject do |data_hash|
      ruby_datetime = Time.at(data_hash["time"])
      ruby_datetime.saturday? || ruby_datetime.sunday?
    end
    pp week_data
    week_data
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

end

