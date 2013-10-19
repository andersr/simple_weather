class WeatherData

  attr_accessor :yesterday_data, :today_data, :lat, :long

  NYC = [40.714623, -74.006605]
  NYC_LAT = NYC[0]
  NYC_LONG = NYC[1] 

  def initialize(lat = NYC_LAT, long = NYC_LONG)
    @lat = lat
    @long = long
    puts "checking my instruments"
    @today_data = ForecastIO.forecast(self.lat, self.long, time: Time.now.to_i)
  end

  def temp_yesterday
    @yesterday_data = ForecastIO.forecast(self.lat, self.long, time: time_yesterday)
    self.yesterday_data["currently"]["temperature"]
  end

  def temp_today
    self.today_data["currently"]["temperature"]
  end

  def temp_tomorrow
    self.today_data["hourly"]["data"][23]["temperature"] 
  end

  def time_yesterday
    Time.now.to_i - 86400
  end

end
