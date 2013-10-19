 require 'forecast_io'




 ForecastIO.api_key = '2b5cab93f5051c1207517df51d39ceee'

forecast = ForecastIO.forecast(40.70536,-74.013963) # somewhere in Asia/Bishkek


#  40.714623,-74.006605  NYC lat/long


NYC_LAT = 40.714623
NYC_LON = -74.006605

current_hash = ForecastIO.forecast(NYC, time: Time.now.to_i)
yesterday_hash = ForecastIO.forecast(NYC, time: Time.new(2013, 10, 18).to_i)
# format for querying yesterday



  def get_temp_yesterday(yesterday_hash)
    yesterday_hash["currently"]["temperature"]
  end

  def get_temp_current(current_hash)
    current_hash["currently"]["temperature"]
  end



    yesterday = ForecastIO.forecast(40.70536,-74.013963, time: Time.new(2013, 10, 18).to_i)
