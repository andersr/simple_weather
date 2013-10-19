class WeatherData

  attr_accessor :yesterday_data, :today_data

  NYC_LAT = 40.714623
  NYC_LON = -74.006605

  def initialize(lat = NYC_LAT, lon = NYC_LON)
    print "checking the weather."
    @today_data = ForecastIO.forecast(lat, lon, time: Time.now.to_i)
    print " . "
    @yesterday_data = ForecastIO.forecast(lat, lon, time: time_yesterday)
    print ".\n "

  end



  def time_yesterday
    Time.now.to_i - 86400
  end


  def get_temp_yesterday
    self.yesterday_data["currently"]["temperature"]
  end

  def get_temp_today
    self.today_data["currently"]["temperature"]
  end



end
